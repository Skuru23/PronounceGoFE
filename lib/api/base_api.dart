import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class BaseApi {
  static final BaseApi _instance = BaseApi._internal();
  late final PronounceGoApi api;

  factory BaseApi() {
    return _instance;
  }

  BaseApi._internal() {
    final dio = Dio(BaseOptions(
      baseUrl: dotenv.env["API_BASE_URL"] ?? "http://localhost:8000",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    ));

    // Add token interceptors, logging, etc. here
    // dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    //   options.headers['Authorization'] = 'Bearer $token';
    //   return handler.next(options);
    // }));

    api = PronounceGoApi(dio: dio);
  }

  static PronounceGoApi getApi() {
    return _instance.api;
  }
}

class RefreshTokenInterceptor extends Interceptor {
  final TokenManager _tokenManager;

  RefreshTokenInterceptor(this._tokenManager);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      String? newToken = await _tokenManager.refreshToken();
      if (newToken != null) {
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
        // Retry request với token mới
        final options = Options(
          method: err.requestOptions.method,
          headers: err.requestOptions.headers,
        );
        final cloneReq = await err.requestOptions.dio?.request(
          err.requestOptions.path,
          options: options,
        );
        return handler.resolve(cloneReq!);
      }
    }
    return handler.next(err);
  }
}

extension on RequestOptions {
  get dio => null;
}

class TokenManager {
  Future<String?> getAccessToken() async {
    return 'access_token'; // Lấy token từ storage
  }

  Future<String?> refreshToken() async {
    String newToken = 'new_access_token';
    await saveAccessToken(newToken);
    return newToken;
  }

  Future<void> saveAccessToken(String token) async {}
}
