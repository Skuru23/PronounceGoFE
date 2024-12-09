import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/create_course_screen/create_course_screen.dart';
import 'package:pronounce_go/widgets/course_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class MyCourseScreen extends StatefulWidget {
  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  final LessonRepository lessonRepository = LessonRepository();
  final AuthRepository authRepository = AuthRepository();
  List<ListLessonsItem> publicCourses = [];
  List<ListLessonsItem> privateCourses = [];

  @override
  void initState() {
    super.initState();
    fetchLessons();
  }

  Future<void> fetchLessons() async {
    lessonRepository
        .getLesson(
      userOwnerId: authRepository.currentUser?.id != null
          ? int.parse(authRepository.currentUser!.id)
          : null,
    )
        .then((response) {
      setState(() {
        publicCourses = List<ListLessonsItem>.from(response.data.data ?? []);
      });
    });

    lessonRepository
        .getLesson(
      is_public: false,
      userOwnerId: authRepository.currentUser?.id != null
          ? int.parse(authRepository.currentUser!.id)
          : null,
    )
        .then((response) {
      setState(() {
        privateCourses = List<ListLessonsItem>.from(response.data.data ?? []);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài học của tôi'),
      ),
      body: RefreshIndicator(
        onRefresh: fetchLessons,
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
                  child: const Text('Chia sẻ với mọi người'),
                ),
                children: publicCourses.map((course) {
                  return CourseCard(course: course);
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
                  child: const Text('Riêng tôi'),
                ),
                children: privateCourses.map((course) {
                  return CourseCard(course: course);
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
            Get.to(() => CreateCourseScreen());
          },
          icon: const Icon(Icons.add),
          tooltip: 'Create Course',
          label: const Text('Tạo bài học mới'),
        ),
      ),
    );
  }
}
