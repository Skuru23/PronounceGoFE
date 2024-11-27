import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/api/lesson_respository.dart';
import 'package:pronounce_go/screens/create_course_screen/create_course_screen.dart';
import 'package:pronounce_go/screens/group_courses/group_course_card.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';
import 'package:pronounce_go/widgets/course_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class MyCourseScreen extends StatefulWidget {
  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  final LessonRespository lessonRespository = LessonRespository();
  final AuthRepository authRepository = AuthRepository();
  List<ListLessonsItem> publicCourses = [];
  List<ListLessonsItem> privateCourses = [];

  @override
  void initState() {
    super.initState();
    lessonRespository
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

    lessonRespository
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
        title: Text('My Courses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text('Public Courses'),
                ),
                children: publicCourses.map((course) {
                  return CourseCard(course: course);
                }).toList(),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text('Private Courses'),
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
          icon: Icon(Icons.add),
          tooltip: 'Create Course',
          label: Text('Tạo bài học mới'),
        ),
      ),
    );
  }
}
