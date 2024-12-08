import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/api/word_repository.dart';
import 'package:pronounce_go/screens/create_course_screen/sentence_input.dart';
import 'package:pronounce_go/screens/create_course_screen/words_input.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:built_collection/built_collection.dart';

class CreateCourseScreen extends StatefulWidget {
  @override
  _CreateCourseScreenState createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  final _formKey = GlobalKey<FormState>();
  final LessonRepository _lessonRespository = LessonRepository();
  final WordRepository _wordRepository = WordRepository();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _isPublic = false;
  final List<int> _selectedWordIds = [];
  List<String> _sentences = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _fetchWords();
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
      print(e.toString());
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
        title: Text('Tạo 1 bài học mới'),
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
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Tên bài học'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hãy nhập tên bài học';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _descriptionController,
                      decoration: InputDecoration(labelText: 'Mô tả'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Bài học có gì hay?';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    CheckboxListTile(
                      title: Text('Chia sẻ với mọi người?'),
                      value: _isPublic,
                      onChanged: (bool? value) {
                        setState(() {
                          _isPublic = value ?? false;
                        });
                      },
                      contentPadding: EdgeInsets.zero,
                    ),
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
                      onChanged: (List<Map<String, String>> items) {
                        setState(() {
                          _selectedWordIds.clear();
                          _selectedWordIds
                              .addAll(items.map((e) => int.parse(e['id']!)));
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    SentencesInput(
                      onChanged: (List<String> sentences) {
                        setState(() {
                          _sentences = sentences;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: submitForm,
                  child: Text('Create Lesson'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createLesson() async {
    Response response =
        await _lessonRespository.createPersonLesson(CreatePersonLessonRequest(
      (b) => b
        ..name = _titleController.text
        ..description = _descriptionController.text
        ..isPublic = _isPublic
        ..wordIds = ListBuilder<int>(_selectedWordIds)
        ..sentenceList = ListBuilder<String>(_sentences)
        ..groupOwnerId = null,
    ));

    if (response.statusCode == 204) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Lesson created successfully'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to create lesson'),
      ));
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
