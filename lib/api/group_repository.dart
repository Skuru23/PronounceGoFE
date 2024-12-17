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

  final GroupsApi groupApi = BaseApi.getApi().getGroupsApi();

  Future<Response<GetGroupsResponse>> getGroups(bool? isMember) async {
    if (isMember != null && isMember) {
      return await groupApi.listingGroupApiV1GroupsGet(isMember: 'True');
    } else {
      return await groupApi.listingGroupApiV1GroupsGet();
    }
  }

  Future<Response> createGroup(String name, String description,
      {String? imageUrl}) async {
    return await groupApi.createGroupApiV1GroupsPost(
      createGroupRequest: CreateGroupRequest((b) => b
        ..name = name
        ..description = description
        ..imagePath = imageUrl),
    );
  }

  Future<Response<GetGroupDetailResponse>> getGroupDetail(int groupId) async {
    return await groupApi.getGroupDetailApiV1GroupsGroupIdGet(groupId: groupId);
  }

  Future<Response> joinGroup(int groupId) async {
    return await groupApi.joinGroupApiV1GroupsGroupIdJoinPatch(
        groupId: groupId);
  }

  Future<Response<GetGroupMembersResponse>> getGroupMembers(int groupId) async {
    return await groupApi.getGroupMembersApiV1GroupsGroupIdMembersGet(
        groupId: groupId);
  }

  Future<Response<ListingTopGroupResponse>> listingTopGroup() async {
    return await groupApi.listingTopGroupApiV1GroupsTopGroupsGet();
  }
}
