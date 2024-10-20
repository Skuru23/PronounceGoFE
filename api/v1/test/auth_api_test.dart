import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for AuthApi
void main() {
  final instance = PronounceGoApi().getAuthApi();

  group(AuthApi, () {
    // Login
    //
    //Future<TokenResponse> loginApiV1LoginPost(LoginRequest loginRequest) async
    test('test loginApiV1LoginPost', () async {
      // TODO
    });

    // Me
    //
    //Future<GetMeResponse> meApiV1MeGet() async
    test('test meApiV1MeGet', () async {
      // TODO
    });

    // Refresh Token
    //
    //Future<TokenResponse> refreshTokenApiV1RefreshTokenGet(String refreshToken) async
    test('test refreshTokenApiV1RefreshTokenGet', () async {
      // TODO
    });

    // Signup
    //
    //Future signupApiV1SignupPost(SignupRequest signupRequest) async
    test('test signupApiV1SignupPost', () async {
      // TODO
    });
  });
}
