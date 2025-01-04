import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:file_picker/file_picker.dart'; // Add this import
import 'package:pronounce_go/api/image_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/util.dart';
// Add this import

class CreateGroupScreen extends StatefulWidget {
  final VoidCallback onGroupCreated;

  const CreateGroupScreen({super.key, required this.onGroupCreated});

  @override
  CreateGroupScreenState createState() => CreateGroupScreenState();
}

class CreateGroupScreenState extends State<CreateGroupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GroupRepository groupRepository = GroupRepository();
  final ImageRepository imageRepository = ImageRepository();
  final _formKey = GlobalKey<FormState>();
  String? _imageUrl;

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
        if (kDebugMode) {
          print(e);
        }
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
        if (kDebugMode) {
          print(e);
        }
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

  Widget _buildImagePicker(bool isDesktop) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: isDesktop ? 150 : 100,
        height: isDesktop ? 150 : 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
          image: _imageUrl != null
              ? DecorationImage(
                  image: NetworkImage(
                    "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${_imageUrl!}",
                  ),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: _imageUrl == null
            ? Icon(Icons.add_a_photo, color: Colors.grey[700])
            : null,
      ),
    );
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      try {
        final res = await groupRepository.createGroup(
          nameController.text,
          descriptionController.text,
          imageUrl: _imageUrl ?? '', // Ensure _imageUrl is not null
        );

        if (res.statusCode == 204) {
          nameController.clear();
          descriptionController.clear();
          setState(() {
            _imageUrl = null;
          });

          widget.onGroupCreated(); // Call the callback function
          Get.back();
        }
      } on Exception catch (e) {
        if (e is DioException) {
          dioExceptionHandle(e);
        } else {
          showToast('Error: $e', 'error');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final bool isDesktop = Responsive.isDesktop(context);
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo hội nhóm mới'),
      ),
      body: Center(
        child: SizedBox(
          width: isDesktop ? size.width * 0.6 : size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: 'Tên giáo phái',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tên giáo phái không được để trống';
                            } else if (value.length > 64) {
                              return 'Tên giáo phái không được vượt quá 64 ký tự';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      _buildImagePicker(isDesktop),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Mô tả',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mô tả không được để trống';
                      } else if (value.length > 2048) {
                        return 'Mô tả không được vượt quá 2048 ký tự';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _submitForm,
        icon: Icon(
          Icons.check,
          color: theme.onPrimary,
        ),
        label: Text(
          'Tạo',
          style: textTheme.titleSmall?.copyWith(color: theme.onPrimary),
        ),
        backgroundColor: theme.primary,
      ),
    );
  }
}
