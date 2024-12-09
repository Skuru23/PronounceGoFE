import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnRepository {
  LearnRepository._privateConstructor();
  static final LearnRepository _instance =
      LearnRepository._privateConstructor();
  factory LearnRepository() {
    return _instance;
  }

  final LearnApi api = BaseApi.getApi().getLearnApi();

  Future<Response> learnWord(int progressWordId, String speechText) async {
    return await api.learnWordApiV1LearnWordsProgressWordIdPost(
      progressWordId: progressWordId,
      learnWordRequest: LearnWordRequest((b) => b..speechText = speechText),
    );
  }

  Future<Response> learnSentence(
      int progressSentenceId, String speechText) async {
    return await api.learnSentenceApiV1LearnSentencesProgressSentenceIdPost(
      progressSentenceId: progressSentenceId,
      learnSentenceRequest:
          LearnSentenceRequest((b) => b..speechText = speechText),
    );
  }
}
