import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/screens/login_screen/login_screen.dart';
import 'package:pronounce_go/screens/welcome_screen/welcome_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_api.dart';

class TokenInterceptor extends InterceptorsWrapper {
  static const int maxRetryAttempts = 1;
  int retryCount = 0;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && retryCount < maxRetryAttempts) {
      final prefs = await SharedPreferences.getInstance();
      final refreshToken = prefs.getString('refreshToken');
      if (refreshToken != null) {
        try {
          AuthRepository authRepository = AuthRepository();
          final response = await authRepository.refreshToken(refreshToken);
          if (response.statusCode == 200 && response.data != null) {
            final newToken = response.data!.accessToken;
            final newRefreshToken = response.data!.refreshToken;
            prefs.setString('token', newToken);
            prefs.setString('refreshToken', newRefreshToken);
            err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
            retryCount++;
            final retryResponse = await BaseApi.getApi()
                .dio
                .request(
                  err.requestOptions.path,
                  options: Options(
                    method: err.requestOptions.method,
                    headers: err.requestOptions.headers,
                  ),
                  data: err.requestOptions.data,
                  queryParameters: err.requestOptions.queryParameters,
                )
                .then((response) {
              retryCount = 0;
              return response;
            });

            return handler.resolve(retryResponse);
          }
        } on Exception catch (e) {
          showToast("Error: $e", 'error');
          await _handleRefreshTokenFailed(prefs, handler);
          return;
        }
      } else {
        await _handleRefreshTokenFailed(prefs, handler);
        return;
      }
    }
    super.onError(err, handler);
  }
}

Future<void> _handleRefreshTokenFailed(
    SharedPreferences prefs, ErrorInterceptorHandler handler) async {
  await prefs.remove('token');
  await prefs.remove('refreshToken');

  showToast("Refresh token failed. Redirecting to login.", 'error');
  Get.to(() => const WelcomeScreen());
  handler.reject(DioException(
    requestOptions: RequestOptions(path: ''),
    error: 'Unauthorized',
  ));
}
