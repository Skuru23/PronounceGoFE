import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  static final AuthRepository _instance = AuthRepository._privateConstructor();
  factory AuthRepository() {
    return _instance;
  }

  late final Dio dio;
  late final PronounceGoApi api;

  AuthRepository._privateConstructor() {
    dio = Dio(BaseOptions(
      baseUrl: dotenv.env["API_BASE_URL"] ?? "http://localhost:8000",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    ));
    api = PronounceGoApi(dio: dio);
  }
  User? currentUser;

  Future<Response<TokenResponse>> login(String email, String password) async {
    final AuthApi authApi = api.getAuthApi();
    Response<TokenResponse> response = await authApi.loginApiV1LoginPost(
      loginRequest: LoginRequest((b) => b
        ..email = email
        ..password = password),
    );

    if (response.statusCode == 200 && response.data != null) {
      final prefs = await SharedPreferences.getInstance();
      final token = response.data!.accessToken;
      api.setOAuthToken('OAuth2PasswordBearer', token);
      prefs.setString('token', token);
      prefs.setString('refreshToken', response.data!.refreshToken);
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

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('userId', currentUser!.id);
      prefs.setString('userRoleCode', currentUser!.roleCode);
      prefs.setString('userEmail', currentUser!.email);
      prefs.setString('userName', currentUser!.name);
      prefs.setString('userPhone', currentUser!.phone);
      prefs.setString('userAddress', currentUser!.address);
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

  Future<Response<TokenResponse>> refreshToken(String refreshToken) async {
    final AuthApi authApi = api.getAuthApi();
    Response<TokenResponse> response = await authApi
        .refreshTokenApiV1RefreshTokenGet(refreshToken: refreshToken);
    return response;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    prefs.remove('refreshToken');
    prefs.remove('userId');
    prefs.remove('userRoleCode');
    prefs.remove('userEmail');
    prefs.remove('userName');
    prefs.remove('userPhone');
    prefs.remove('userAddress');
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
