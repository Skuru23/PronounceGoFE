import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseCard extends StatelessWidget {
  final ListLessonsItem course;

  const CourseCard({super.key, required this.course});

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
          course.name ?? 'No name ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Số likes: ${course.totalLike}'),
            SizedBox(width: 16.0),
            Text('Tác giả: ${course.creator}'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            Get.to(() => CourseDetail(
                  courseId: course.id,
                ));
          },
          child: Text('Xem chi tiết'),
        ),
      ),
    );
  }
}
