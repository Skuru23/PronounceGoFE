import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupRespository {
  GroupRespository._privateConstructor();
  static final GroupRespository _instance =
      GroupRespository._privateConstructor();
  factory GroupRespository() {
    return _instance;
  }

  final GroupsApi lessonApi = BaseApi.getApi().getGroupsApi();

  Future<Response<GetGroupsResponse>> getGroups() async {
    return await lessonApi.listingGroupApiV1GroupsGet();
  }

  Future<Response> createGroup(String name, String description) async {
    return await lessonApi.createGroupApiV1GroupsPost(
      createGroupRequest: CreateGroupRequest((b) => b
        ..name = name
        ..description = description),
    );
  }
}
