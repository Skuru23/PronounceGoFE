import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for LearnApi
void main() {
  final instance = PronounceGoApi().getLearnApi();

  group(LearnApi, () {
    // Learn Sentence
    //
    //Future<LearnSentenceResponse> learnSentenceApiV1LearnSentencesProgressSentenceIdPost(int progressSentenceId, LearnSentenceRequest learnSentenceRequest) async
    test('test learnSentenceApiV1LearnSentencesProgressSentenceIdPost',
        () async {
      // TODO
    });

    // Learn Word
    //
    //Future<LearnWordResponse> learnWordApiV1LearnWordsProgressWordIdPost(int progressWordId, LearnWordRequest learnWordRequest) async
    test('test learnWordApiV1LearnWordsProgressWordIdPost', () async {
      // TODO
    });
  });
}
