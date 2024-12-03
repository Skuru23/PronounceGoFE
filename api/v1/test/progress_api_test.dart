import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for ProgressApi
void main() {
  final instance = PronounceGoApi().getProgressApi();

  group(ProgressApi, () {
    // Create Group
    //
    //Future createGroupApiV1ProgressesPost(CreateGroupRequest createGroupRequest) async
    test('test createGroupApiV1ProgressesPost', () async {
      // TODO
    });

    // Listing Group
    //
    //Future<GetGroupsResponse> listingGroupApiV1ProgressesGet({ String name, String sortBy }) async
    test('test listingGroupApiV1ProgressesGet', () async {
      // TODO
    });
  });
}
