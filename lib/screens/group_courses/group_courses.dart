import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/create_group_course_screen/create_group_course_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/course_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupCourses extends StatefulWidget {
  final int groupId;

  const GroupCourses({super.key, required this.groupId});

  @override
  State<GroupCourses> createState() => _GroupCoursesState();
}

class _GroupCoursesState extends State<GroupCourses> {
  List<ListLessonsItem> publicCourses = [];
  List<ListLessonsItem> privateCourses = [];
  final LessonRepository lessonRepository = LessonRepository();
  final GroupRepository groupRepository = GroupRepository();
  GetGroupDetailResponse? group;

  Future<void> fetchCourses() async {
    try {
      final response =
          await lessonRepository.getLesson(groupOwnerId: widget.groupId);
      if (response.statusCode == 200) {
        setState(() {
          publicCourses = List<ListLessonsItem>.from(response.data.data ?? []);
        });
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data, 'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }

    try {
      final response = await lessonRepository.getLesson(
          is_public: false, groupOwnerId: widget.groupId);
      if (response.statusCode == 200) {
        setState(() {
          privateCourses = List<ListLessonsItem>.from(response.data.data ?? []);
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
    fetchCourses();
    fetchGroup();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài học của nhóm'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await fetchCourses();
          await fetchGroup();
        },
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
                    'Mọi người đều thấy',
                    style: textTheme.headlineSmall,
                  ),
                ),
                children: publicCourses.map((course) {
                  return CourseCard(
                    course: course,
                    refetch: fetchCourses,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16.0),
            if (group?.isMember ?? false)
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
                      'Chỉ thành viên mới thấy',
                      style: textTheme.headlineSmall,
                    ),
                  ),
                  children: privateCourses.map((course) {
                    return CourseCard(
                      course: course,
                      refetch: fetchCourses,
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: (group?.isMember ?? false)
          ? Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Get.to(
                      () => CreateGroupCourseScreen(groupId: widget.groupId));
                },
                icon: const Icon(Icons.add),
                label: const Text('Tạo bài học mới'),
              ),
            )
          : null,
    );
  }
}
