import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';

class GroupCourseCard extends StatelessWidget {
  final Course course;

  const GroupCourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.inversePrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          course.name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Likes: ${course.totalLikes}'),
            SizedBox(width: 16.0),
            Text('Creator: ${course.creator}'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            Get.to(() => CourseDetail());
          },
          child: Text('See details'),
        ),
      ),
    );
  }
}
