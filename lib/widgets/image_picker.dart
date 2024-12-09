import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImagePicker extends StatelessWidget {
  final String? _imageUrl;
  final VoidCallback _pickImage;

  const ImagePicker(
      {super.key, required String? imageUrl, required VoidCallback pickImage})
      : _imageUrl = imageUrl,
        _pickImage = pickImage;

  @override
  Widget build(BuildContext context) {
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
}
