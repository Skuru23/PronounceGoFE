import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/member_repository.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupMemberCard extends StatefulWidget {
  final GroupMemberItem member;
  final bool isManager;
  final VoidCallback refetch;
  const GroupMemberCard(
      {super.key,
      required this.member,
      required this.isManager,
      required this.refetch});

  @override
  State<GroupMemberCard> createState() => _GroupMemberCardState();
}

class _GroupMemberCardState extends State<GroupMemberCard> {
  final MemberRepository memberRepository = MemberRepository();

  void approveMember() async {
    try {
      final response = await memberRepository.approveMember(widget.member.id);
      if (response.statusCode == 204) {
        showToast('Đã xác nhận thành công', 'success');
        widget.refetch();
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
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      color: theme.onSecondary,
      child: ListTile(
        title: Text(widget.member.name ?? 'Unknown',
            style: textTheme.headlineSmall),
        subtitle: widget.member.approvedAt != null
            ? Text('Approved at: ${widget.member.approvedAt!.toLocal()}',
                style: textTheme.bodySmall)
            : null,
        trailing: widget.member.isManager
            ? const Icon(Icons.star, color: Colors.yellow)
            : widget.member.approvedAt == null && widget.isManager
                ? ElevatedButton(
                    onPressed: approveMember,
                    child: const Text('Xác nhận'),
                  )
                : null,
      ),
    );
  }
}
