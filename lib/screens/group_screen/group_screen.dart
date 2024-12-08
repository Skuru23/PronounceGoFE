import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/screens/create_group_screen/create_group_screen.dart';
import 'package:pronounce_go/screens/group_screen/group_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

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
  final List<GetGroupItem> groups = [];

  String searchQuery = '';
  GroupRepository groupRepository = GroupRepository();

  @override
  void initState() {
    super.initState();
    groupRepository.getGroups().then((response) {
      setState(() {
        groups.addAll(response.data?.data ?? []);
      });
    });
  }

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
                hintText: 'Tìm kiếm...',
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
                if (group.name != null &&
                    group.name!
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
          Get.to(() => CreateGroupScreen());
        },
        icon: Icon(Icons.add),
        label: Text('Tạo giáo phái'),
        backgroundColor: theme.primary,
      ),
    );
  }
}
