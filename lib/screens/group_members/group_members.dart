import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/group_member_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupMembersPage extends StatefulWidget {
  final int groupId;

  const GroupMembersPage({super.key, required this.groupId});

  @override
  State<GroupMembersPage> createState() => _GroupMembersPageState();
}

class _GroupMembersPageState extends State<GroupMembersPage> {
  GetGroupMembersResponse? groupMembers;
  GetGroupDetailResponse? group;
  final GroupRepository groupRepository = GroupRepository();

  Future<void> fetchGroupMembers() async {
    try {
      final response = await groupRepository.getGroupMembers(widget.groupId);
      if (response.statusCode == 200) {
        setState(() {
          groupMembers = response.data;
        });
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'], 'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchGroupMembers();
    fetchGroup();
  }

  Future<void> fetchGroup() async {
    try {
      final response = await groupRepository.getGroupDetail(widget.groupId);
      if (response.statusCode == 200) {
        setState(() {
          group = response.data;
        });
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'], 'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Members'),
      ),
      body: groupMembers == null
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: fetchGroupMembers,
              child: ListView.builder(
                itemCount: groupMembers?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final member = groupMembers?.data?[index];
                  if (member != null) {
                    return GroupMemberCard(
                        member: member,
                        isManager: group?.isOwner ?? false,
                        refetch: fetchGroupMembers);
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
    );
  }
}
