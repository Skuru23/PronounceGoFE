import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class WordRepository {
  final PronounceGoApi api = BaseApi.getApi();

  Future<Response<CheckPronounceResponse>> checkWord(
      String speechText, String checkText) async {
    final WordsApi wordsApi = api.getWordsApi();
    Response<CheckPronounceResponse> response =
        await wordsApi.checkPronounceApiV1WordsCheckPost(
      checkPronounceRequest: CheckPronounceRequest((b) => b
        ..expectText = checkText
        ..resultText = speechText),
    );

    return response;
  }
}
