import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for GroupsApi
void main() {
  final instance = PronounceGoApi().getGroupsApi();

  group(GroupsApi, () {
    // Create Group
    //
    //Future<GetGroupsResponse> createGroupApiV1GroupsGet({ int page, int perPage, String name, String sortBy }) async
    test('test createGroupApiV1GroupsGet', () async {
      // TODO
    });

    // Create Group
    //
    //Future createGroupApiV1GroupsPost(CreateGroupRequest createGroupRequest) async
    test('test createGroupApiV1GroupsPost', () async {
      // TODO
    });
  });
}
