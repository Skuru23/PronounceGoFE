import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for MembersApi
void main() {
  final instance = PronounceGoApi().getMembersApi();

  group(MembersApi, () {
    // Approve Member
    //
    //Future approveMemberApiV1MembersMemberIdApprovePost(int memberId) async
    test('test approveMemberApiV1MembersMemberIdApprovePost', () async {
      // TODO
    });
  });
}
