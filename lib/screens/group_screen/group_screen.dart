import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/group_card.dart';
import 'package:pronounce_go/screens/my_group_screen/my_group_screen.dart';
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
  const GroupScreen({super.key});

  @override
  GroupScreenState createState() => GroupScreenState();
}

class GroupScreenState extends State<GroupScreen> {
  final List<GetGroupItem> groups = [];

  String searchQuery = '';
  GroupRepository groupRepository = GroupRepository();

  @override
  void initState() {
    super.initState();
    fetchGroups();
  }

  Future<void> fetchGroups() async {
    try {
      var response = await groupRepository.getGroups(null);
      if (response.statusCode == 200) {
        setState(() {
          groups.clear();
          groups.addAll(response.data?.data ?? []);
        });
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'], 'error');
      } else {
        showToast('Failed to fetch groups: $e', 'error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hội nhóm'),
      ),
      body: RefreshIndicator(
        onRefresh: fetchGroups,
        child: Column(
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
                    return GroupCard(
                      group: group,
                      refetch: fetchGroups,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => const MyGroupScreen());
        },
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Hội nhóm của tôi'),
      ),
    );
  }
}
