import 'dart:async';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/image_repository.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/api/word_repository.dart';
import 'package:pronounce_go/widgets/sentence_input.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/image_picker.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:built_collection/built_collection.dart';

class CreateGroupCourseScreen extends StatefulWidget {
  final int groupId;

  const CreateGroupCourseScreen({super.key, required this.groupId});

  @override
  CreateGroupCourseScreenState createState() => CreateGroupCourseScreenState();
}

class CreateGroupCourseScreenState extends State<CreateGroupCourseScreen> {
  final _formKey = GlobalKey<FormState>();
  final LessonRepository _lessonRepository = LessonRepository();
  final WordRepository _wordRepository = WordRepository();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final ImageRepository imageRepository = ImageRepository();
  bool _isPublic = false;
  final List<int> _selectedWordIds = [];
  List<String> _sentences = [];
  Timer? _debounce;
  String? _imageUrl;

  @override
  void initState() {
    super.initState();
    _fetchWords();
  }

  Future<void> _pickImageAndroid() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.any);
      if (result != null) {
        final file = result.files.single;

        final imageResponse = await imageRepository.uploadImageAndroid(
          file,
        );
        setState(() {
          _imageUrl = imageResponse.data.path;
        });
      }
    } catch (e) {
      if (e is MissingPluginException) {
        showToast(
            'File picker plugin not found. Please ensure it is properly configured.',
            'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  Future<void> _pickImageWeb() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.any);
      if (result != null) {
        final file = result.files.single;
        if (file.bytes != null) {
          final imageResponse = await imageRepository.uploadImage(
              file.bytes!, file.extension ?? 'png');
          setState(() {
            _imageUrl = imageResponse.data.path;
          });
        } else {
          showToast('Failed to read file bytes', 'error');
        }
      }
    } catch (e) {
      if (e is MissingPluginException) {
        showToast(
            'File picker plugin not found. Please ensure it is properly configured.',
            'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  Future<void> _pickImage() async {
    if (kIsWeb) {
      await _pickImageWeb();
    } else {
      await _pickImageAndroid();
    }
  }

  Future<List<Map<String, String>>> _fetchWords([String? keyword]) async {
    try {
      final response = await _wordRepository.listWords(keyword: keyword);
      final wordMap = response.data?.data
              .map((word) =>
                  {'id': word.id.toString(), 'word': word.word.toString()})
              .toList()
              .cast<Map<String, String>>() ??
          [];
      return wordMap;
    } catch (e) {
      showToast("Error: $e", 'error');
      return [];
    }
  }

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      _createLesson();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo 1 bài học mới'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _titleController,
                            decoration: InputDecoration(
                                labelText: 'Tên bài học',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Hãy nhập tên bài học';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 16),
                        ImagePicker(
                          imageUrl: _imageUrl,
                          pickImage: _pickImage,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                          labelText: 'Mô tả',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Bài học có gì hay?';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Text('Danh sách từ vựng'),
                    const SizedBox(height: 16),
                    DropdownSearch<Map<String, String>>.multiSelection(
                      items: (filter, s) async {
                        if (_debounce?.isActive ?? false) _debounce?.cancel();
                        Completer<List<Map<String, String>>> completer =
                            Completer();
                        _debounce =
                            Timer(const Duration(milliseconds: 500), () async {
                          List<Map<String, String>> result =
                              await _fetchWords(filter);
                          completer.complete(result);
                        });
                        await completer.future;
                        return completer.future;
                      },
                      compareFn: (i, s) => i['id'] == s['id'],
                      popupProps: PopupPropsMultiSelection.bottomSheet(
                        bottomSheetProps: BottomSheetProps(
                            backgroundColor: Colors.blueGrey[50]),
                        showSearchBox: true,
                        itemBuilder: (context, item, isSelected, itemAsString) {
                          return ListTile(title: Text(item['word']!));
                        },
                      ),
                      dropdownBuilder: (context, selectedItems) {
                        return Wrap(
                          children: selectedItems.map((item) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Chip(
                                label: Text(item['word']!),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                onDeleted: () {
                                  selectedItems.remove(item);
                                  setState(() {
                                    _selectedWordIds.addAll(selectedItems
                                        .map((e) => int.parse(e['id']!)));
                                  });
                                },
                              ),
                            );
                          }).toList(),
                        );
                      },
                      onChanged: (List<Map<String, String>> items) {
                        setState(() {
                          _selectedWordIds.clear();
                          _selectedWordIds
                              .addAll(items.map((e) => int.parse(e['id']!)));
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text('Danh sách câu'),
                    const SizedBox(height: 16),
                    SentencesInput(
                      onChanged: (List<String> sentences) {
                        setState(() {
                          _sentences = sentences;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Chia sẻ với mọi người?'),
                      value: _isPublic,
                      onChanged: (bool? value) {
                        setState(() {
                          _isPublic = value ?? false;
                        });
                      },
                      contentPadding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: submitForm,
                  child: const Text('Tạo bài học'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createLesson() async {
    try {
      final response =
          await _lessonRepository.createPersonLesson(CreatePersonLessonRequest(
        (b) => b
          ..name = _titleController.text
          ..description = _descriptionController.text
          ..isPublic = _isPublic
          ..wordIds = ListBuilder<int>(_selectedWordIds)
          ..sentenceList = ListBuilder<String>(_sentences)
          ..groupOwnerId = widget.groupId
          ..imagePath = _imageUrl,
      ));

      if (response.statusCode == 204) {
        showToast("Tạo bài học thành công", "success");
        Get.back();
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data.message, "error");
      } else {
        showToast('An error occurred: $e', 'error');
      }
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}
