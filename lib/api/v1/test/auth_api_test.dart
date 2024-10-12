import 'package:test/test.dart';
import 'package:pronunceGo/pronunceGo.dart';

/// tests for AuthApi
void main() {
  final instance = PronunceGo().getAuthApi();

  group(AuthApi, () {
    // Login
    //
    //Future<LoginResponse> loginApiV1LoginPost(LoginRequest loginRequest) async
    test('test loginApiV1LoginPost', () async {
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
