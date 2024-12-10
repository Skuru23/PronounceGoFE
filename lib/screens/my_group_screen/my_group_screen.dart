import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/screens/create_group_screen/create_group_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/group_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class MyGroupScreen extends StatefulWidget {
  const MyGroupScreen({super.key});

  @override
  State<MyGroupScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyGroupScreen> {
  List<GetGroupItem> groups = [];
  GroupRepository groupRepository = GroupRepository();
  User? user = AuthRepository().currentUser;

  Future<void> fetchGroups() async {
    try {
      var response = await groupRepository.getGroups(true);
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
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchGroups();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hội nhóm của tôi'),
      ),
      body: RefreshIndicator(
        onRefresh: fetchGroups,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Quản lý hội',
                    style: textTheme.headlineSmall,
                  ),
                ),
                children: groups
                    .where((group) =>
                        user != null && group.ownerId == int.tryParse(user!.id))
                    .map((group) {
                  return GroupCard(
                    group: group,
                    refetch: fetchGroups,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Thành viên của hội',
                    style: textTheme.headlineSmall,
                  ),
                ),
                children: groups
                    .where((group) =>
                        user != null && group.ownerId != int.tryParse(user!.id))
                    .map((group) {
                  return GroupCard(
                    group: group,
                    refetch: fetchGroups,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton.extended(
          onPressed: () {
            Get.to(() => CreateGroupScreen(onGroupCreated: fetchGroups));
          },
          icon: const Icon(Icons.add),
          label: const Text('Tạo hội nhóm mới'),
        ),
      ),
    );
  }
}
