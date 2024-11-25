import 'package:flutter/material.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/api/lesson_respository.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';
import 'package:pronounce_go/screens/group_courses/group_course_card.dart';
import 'package:pronounce_go/screens/my_course_screen/my_course_screen.dart';
import 'package:pronounce_go/widgets/course_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart'; // Add this import

class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final LessonRespository lessonRespository = LessonRespository();
  final AuthRepository authRepository = AuthRepository();
  List<ListLessonsItem> courses = [];
  List<ListLessonsItem> filteredCourses = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    lessonRespository.getLesson().then((response) {
      setState(() {
        courses = List<ListLessonsItem>.from(response.data.data ?? []);
      });
      updateSearchQuery(searchQuery);
    });
  }

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredCourses = courses
          .where((course) =>
              course.name?.toLowerCase().contains(query.toLowerCase()) ?? false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search courses...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: updateSearchQuery,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: filteredCourses.map((course) {
                  return CourseCard(course: course);
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCourseScreen()),
                );
              },
              child: Text('Go to My Courses'),
            ),
          ),
        ],
      ),
    );
  }
}
