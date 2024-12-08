import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupRepository {
  GroupRepository._privateConstructor();
  static final GroupRepository _instance =
      GroupRepository._privateConstructor();
  factory GroupRepository() {
    return _instance;
  }

  final GroupsApi lessonApi = BaseApi.getApi().getGroupsApi();

  Future<Response<GetGroupsResponse>> getGroups() async {
    return await lessonApi.listingGroupApiV1GroupsGet();
  }

  Future<Response> createGroup(String name, String description,
      {String? imageUrl}) async {
    return await lessonApi.createGroupApiV1GroupsPost(
      createGroupRequest: CreateGroupRequest((b) => b
        ..name = name
        ..description = description
        ..imagePath = imageUrl),
    );
  }
}
