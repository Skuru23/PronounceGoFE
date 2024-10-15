import 'package:test/test.dart';
import 'package:pronunceGo/pronunceGo.dart';

/// tests for WordsApi
void main() {
  final instance = PronunceGo().getWordsApi();

  group(WordsApi, () {
    // Get Word Detail
    //
    //Future<WordDetailResponse> getWordDetailApiV1WordsWordIdGet(int wordId) async
    test('test getWordDetailApiV1WordsWordIdGet', () async {
      // TODO
    });
  });
}
