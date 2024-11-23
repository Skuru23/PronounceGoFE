import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/group_courses/group_course_card.dart';

class Course {
  final String name;
  final String creator;
  final int totalLikes;
  final String description;

  Course({
    required this.name,
    required this.creator,
    required this.totalLikes,
    required this.description,
  });
}

class GroupCourses extends StatelessWidget {
  final List<Course> publicCourses = [
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
    Course(
        name: 'course 1',
        creator: 'abc',
        totalLikes: 100,
        description: 'For beginners'),
    Course(
        name: 'course 2',
        creator: 'def',
        totalLikes: 200,
        description: 'For intermediate'),
    Course(
        name: 'course 3',
        creator: 'ghi',
        totalLikes: 300,
        description: 'For advanced'),
  ];
  final List<Course> privateCourses = [
    Course(
        name: 'course 4',
        creator: 'Dinh Long ga 1',
        totalLikes: 10,
        description: 'For Dinh Long ga 1'),
    Course(
        name: 'course 5',
        creator: 'Dinh Long ga 2',
        totalLikes: 20,
        description: 'For Dinh Long ga 2'),
    Course(
        name: 'course 6',
        creator: 'Dinh Long ga 3',
        totalLikes: 30,
        description: 'For Dinh Long ga 3'),
    Course(
        name: 'course 7',
        creator: 'Dinh Long ga 4',
        totalLikes: 40,
        description: 'For Dinh Long ga 4'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Courses'),
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
                  return GroupCourseCard(course: course);
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
                  child: Text('Public Courses'),
                ),
                children: privateCourses.map((course) {
                  return GroupCourseCard(course: course);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
