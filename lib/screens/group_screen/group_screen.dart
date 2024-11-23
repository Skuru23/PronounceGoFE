import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/group_screen/group_card.dart';

class Group {
  final String name;
  final String owner;
  final int totalMembers;
  final int totalCourses;
  final int totalLikes;
  final String groupImageUrl;
  final String description;

  Group({
    required this.name,
    required this.owner,
    required this.totalMembers,
    required this.totalCourses,
    required this.totalLikes,
    required this.groupImageUrl,
    required this.description,
  });
}

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  final List<Group> groups = [
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg',
        description: 'Nhóm học nấu ăn'),
    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl:
            'data:image/jpeg;base64,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',
        description:
            'Nhóm học nấu ăn cùng nhau phát triển kỹ năng nấu ăn của mình'),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Giáo phái'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: theme.onSecondary,
                filled: true,
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final group = groups[index];
                if (group.name
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase())) {
                  return GroupCard(group: group);
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Handle create group button press
        },
        icon: Icon(Icons.add),
        label: Text('Tạo giáo phái'),
        backgroundColor: theme.primary,
      ),
    );
  }
}
