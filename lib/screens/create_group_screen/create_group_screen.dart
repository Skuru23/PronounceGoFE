import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:file_picker/file_picker.dart'; // Add this import
import 'package:pronounce_go/api/image_repository.dart';
import 'dart:io'; // Add this import

class CreateGroupScreen extends StatefulWidget {
  @override
  _CreateGroupScreenState createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'File picker plugin not found. Please ensure it is properly configured.')),
        );
      } else {
        print(e);
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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to read file bytes')),
          );
        }
      }
    } catch (e) {
      if (e is MissingPluginException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'File picker plugin not found. Please ensure it is properly configured.')),
        );
      } else {
        print(e);
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

  Widget _buildImagePicker() {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
          image: _imageUrl != null
              ? DecorationImage(
                  image: NetworkImage(
                    (dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000') +
                        "api/v1/" +
                        _imageUrl!,
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
    print("Submitting form"); // Debug print
    if (_formKey.currentState!.validate()) {
      print("Form validated"); // Debug print
      final res = await groupRepository.createGroup(
        nameController.text,
        descriptionController.text,
        imageUrl: _imageUrl ?? '', // Ensure _imageUrl is not null
      );
      print("Group creation response: ${res.statusCode}"); // Debug print
      if (res.statusCode == 204) {
        nameController.clear();
        descriptionController.clear();
        setState(() {
          _imageUrl = null;
        });

        Get.back();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tạo giáo phái mới'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Tên giáo phái',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  _buildImagePicker(),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Mô tả',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _submitForm,
        icon: Icon(Icons.check),
        label: Text('Tạo'),
        backgroundColor: theme.primary,
      ),
    );
  }
}
