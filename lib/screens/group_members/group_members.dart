import 'package:flutter/material.dart';

class GroupMember {
  final String name;
  final DateTime joinedAt;
  final bool isManager;
  final bool isApproved;

  GroupMember({
    required this.name,
    required this.joinedAt,
    required this.isManager,
    required this.isApproved,
  });
}

class GroupMembersPage extends StatelessWidget {
  final List<GroupMember> members = [
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    GroupMember(name: 'Alice', joinedAt: DateTime.now().subtract(Duration(days: 10)), isManager: true, isApproved: true),
    GroupMember(name: 'Bob', joinedAt: DateTime.now().subtract(Duration(days: 5)), isManager: false, isApproved: false),
    GroupMember(name: 'Charlie', joinedAt: DateTime.now().subtract(Duration(days: 2)), isManager: false, isApproved: true),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Members'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return ListTile(
            title: Text(member.name),
            subtitle: Text('Joined at: ${member.joinedAt.toLocal()}'),
            trailing: member.isApproved
                ? member.isManager
                    ? Icon(Icons.star, color: Colors.yellow)
                    : null
                : ElevatedButton(
                    onPressed: () {
                      // Approve member logic here
                    },
                    child: Text('Approve'),
                  ),
          );
        },
      ),
    );
  }
}