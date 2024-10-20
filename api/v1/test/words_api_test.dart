import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for WordsApi
void main() {
  final instance = PronounceGoApi().getWordsApi();

  group(WordsApi, () {
    // Get Word Detail
    //
    //Future<WordDetailResponse> getWordDetailApiV1WordsWordIdGet(int wordId) async
    test('test getWordDetailApiV1WordsWordIdGet', () async {
      // TODO
    });
  });
}
