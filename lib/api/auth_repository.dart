import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class AuthRepository {
  final PronounceGoApi api = BaseApi.getApi();

  Future<Response<TokenResponse>> login(String email, String password) async {
    final AuthApi authApi = api.getAuthApi();
    Response<TokenResponse> response = await authApi.loginApiV1LoginPost(
      loginRequest: LoginRequest((b) => b
        ..email = email
        ..password = password),
    );

    if (response.statusCode == 200 && response.data != null) {
      final token = response.data!.accessToken;
      api.setOAuthToken('OAuth2PasswordBearer', token);
    }

    return response;
  }
}
