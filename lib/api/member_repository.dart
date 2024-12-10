import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class MemberRepository {
  MemberRepository._privateConstructor();
  static final MemberRepository _instance =
      MemberRepository._privateConstructor();
  factory MemberRepository() {
    return _instance;
  }

  final MembersApi api = BaseApi.getApi().getMembersApi();

  Future<Response> approveMember(int groupMemberId) async {
    return await api.approveMemberApiV1MembersMemberIdApprovePost(
      memberId: groupMemberId,
    );
  }
}
