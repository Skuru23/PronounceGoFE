import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';
import 'package:pronounce_go/screens/group_members/group_members.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupDetail extends StatefulWidget {
  final int groupId;

  const GroupDetail({super.key, required this.groupId});

  @override
  State<GroupDetail> createState() => _GroupDetailState();
}

class _GroupDetailState extends State<GroupDetail> {
  GroupRepository groupRepository = GroupRepository();
  GetGroupDetailResponse? group;

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
        showToast(e.response?.data, 'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchGroup();
  }

  void joinGroup() async {
    try {
      final response = await groupRepository.joinGroup(widget.groupId);
      if (response.statusCode == 204) {
        showToast('Đã gửi request, hãy chờ xác nhận', 'success');
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
    final size = MediaQuery.of(context).size;
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(group?.name ?? 'No Name'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: isDesktop ? size.width * 0.6 : size.width,
            child: Column(
              children: [
                Card(
                  color: theme.onSecondary,
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: isDesktop ? 200 : 100,
                            height: isDesktop ? 200 : 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(group?.imagePath != null
                                    ? ("${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${group?.imagePath!}")
                                    : "https://i.redd.it/14gnqv8rtl9b1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(group?.name ?? 'No Name',
                            style: textTheme.headlineLarge),
                        const SizedBox(height: 8.0),
                        Text(
                          'Nguời tạo: ${group?.creator}',
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Số thành viên: ${group?.totalMember}',
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Khóa học: ${group?.totalLesson}',
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Lượt thích: ${group?.totalLike}',
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Giới thiệu: ${group?.description}',
                          style: textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                theme.onPrimary, // Set the color of the button
                            minimumSize: const Size(double.infinity,
                                50), // Set the width and height of the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0), // Set the border radius
                            ),
                          ),
                          onPressed: () {
                            Get.to(() => GroupCourses(
                                  groupId: widget.groupId,
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bài học của nhóm',
                                style: textTheme.titleMedium,
                              ),
                              const Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                theme.onPrimary, // Set the color of the button
                            minimumSize: const Size(double.infinity,
                                50), // Set the width and height of the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0), // Set the border radius
                            ),
                          ),
                          onPressed: () {
                            Get.to(() => GroupMembersPage(
                                  groupId: widget.groupId,
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Danh sách thành viên',
                                style: textTheme.titleMedium,
                              ),
                              const Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (group?.isMember != null && group!.isMember == false)
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: theme.onPrimary,
                              backgroundColor:
                                  theme.primary, // Set the color of the button
                              minimumSize: const Size(double.infinity,
                                  50), // Set the width and height of the button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Set the border radius
                              ),
                            ),
                            onPressed: joinGroup,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tham gia nhóm',
                                  style: textTheme.titleMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                                const Icon(Icons.group_add,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
