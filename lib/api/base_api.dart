import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'token_interceptor.dart';

class BaseApi {
  static final BaseApi _instance = BaseApi._internal();
  late final PronounceGoApi api;
  final TokenInterceptor tokenInterceptor = TokenInterceptor();
  factory BaseApi() {
    return _instance;
  }

  BaseApi._internal() {
    final dio = Dio(BaseOptions(
      baseUrl: dotenv.env["API_BASE_URL"] ?? "http://localhost:8000",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    ));

    api = PronounceGoApi(dio: dio, interceptors: [tokenInterceptor]);
  }

  static PronounceGoApi getApi() {
    return _instance.api;
  }
}
