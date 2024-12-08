import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:http_parser/http_parser.dart';

class ImageRepository {
  ImageRepository._privateConstructor();
  static final ImageRepository _instance =
      ImageRepository._privateConstructor();
  factory ImageRepository() {
    return _instance;
  }

  final ImagesApi imagesApi = BaseApi.getApi().getImagesApi();

  Future<Response> uploadImage(Uint8List file, String extension) async {
    try {
      String mimeType = extension.isNotEmpty ? 'image/$extension' : 'image/png';
      MultipartFile multipartFile = MultipartFile.fromBytes(
        file,
        filename: 'upload.$extension',
        contentType: MediaType.parse(mimeType),
      );
      Response res =
          await imagesApi.uploadImageApiV1ImagesUploadPost(file: multipartFile);
      return res;
    } catch (e) {
      print('Error uploading image: $e');
      rethrow;
    }
  }

  Future<Response> uploadImageAndroid(PlatformFile file) async {
    try {
      String mimeType =
          file.extension != null ? 'image/${file.extension}' : 'image/png';
      MultipartFile multipartFile = await MultipartFile.fromFile(
        file.path!,
        filename: 'upload.${file.extension}',
        contentType: MediaType.parse(mimeType),
      );
      Response res =
          await imagesApi.uploadImageApiV1ImagesUploadPost(file: multipartFile);
      return res;
    } catch (e) {
      print('Error uploading image: $e');
      rethrow;
    }
  }
}
