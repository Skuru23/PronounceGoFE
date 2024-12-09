import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class AuthRepository {
  AuthRepository._privateConstructor();
  static final AuthRepository _instance = AuthRepository._privateConstructor();
  factory AuthRepository() {
    return _instance;
  }

  final PronounceGoApi api = BaseApi.getApi();
  User? currentUser;

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
      await _saveUserData();
    }

    return response;
  }

  Future<void> _saveUserData() async {
    final AuthApi authApi = api.getAuthApi();
    Response<GetMeResponse> response = await authApi.meApiV1MeGet();
    if (response.statusCode == 200 && response.data != null) {
      currentUser = User(
        id: response.data!.id.toString(),
        roleCode: response.data!.roleCode.toString(),
        email: response.data!.email ?? '',
        name: response.data!.name ?? '',
        phone: response.data!.phone ?? '',
        address: response.data!.address ?? '',
      );
    }
  }

  Future<Response> getMe() async {
    final AuthApi authApi = api.getAuthApi();
    try {
      Response<GetMeResponse> response = await authApi.meApiV1MeGet();
      return response;
    } catch (e) {
      return Response(
          statusCode: 500, requestOptions: RequestOptions(path: ''));
    }
  }

  Future<Response> register(String email, String password, String name,
      String phone, String address) async {
    final AuthApi authApi = api.getAuthApi();
    Response response = await authApi.signupApiV1SignupPost(
      signupRequest: SignupRequest((b) => b
        ..email = email
        ..password = password
        ..name = name
        ..phone = phone
        ..address = address),
    );

    return response;
  }
}

class User {
  final String id;
  final String roleCode;
  final String email;
  final String name;
  final String phone;
  final String address;

  User({
    required this.id,
    required this.roleCode,
    required this.email,
    required this.name,
    required this.phone,
    required this.address,
  });
}
