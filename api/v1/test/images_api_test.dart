import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for ImagesApi
void main() {
  final instance = PronounceGoApi().getImagesApi();

  group(ImagesApi, () {
    // Upload Image
    //
    //Future<JsonObject> uploadImageApiV1ImagesUploadPost(MultipartFile file) async
    test('test uploadImageApiV1ImagesUploadPost', () async {
      // TODO
    });
  });
}
