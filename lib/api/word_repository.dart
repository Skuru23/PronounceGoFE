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

  Future<Response> getWord(int wordId) async {
    final WordsApi wordsApi = api.getWordsApi();
    Response<WordDetailResponse> response =
        await wordsApi.getWordDetailApiV1WordsWordIdGet(wordId: wordId);

    return response;
  }

  Future<Response> listWords(
      {int? total, String? keyword, int? difficultLevel}) async {
    final WordsApi wordsApi = api.getWordsApi();
    Map<String, dynamic> queryParams = {
      if (keyword != null) 'keyword': keyword,
      if (total != null) 'total': total.toString(),
      if (difficultLevel != null) 'difficult_level': difficultLevel.toString(),
    };

    Response<ListingWordResponse> response =
        await wordsApi.listingWordApiV1WordsGet(
      keyword: keyword,
      total: queryParams['total'],
      difficultLevel: queryParams['difficult_level'],
    );

    return response;
  }
}
