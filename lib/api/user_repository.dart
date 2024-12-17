import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class UserRepository {
  UserRepository._privateConstructor();
  static final UserRepository _instance = UserRepository._privateConstructor();
  factory UserRepository() {
    return _instance;
  }

  final UsersApi api = BaseApi.getApi().getUsersApi();

  Future<Response<UserResponse>> getUserDetail() async {
    return await api.getUserApiV1UsersGet();
  }
}
