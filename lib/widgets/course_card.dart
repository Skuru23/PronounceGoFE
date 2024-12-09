import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseCard extends StatelessWidget {
  final ListLessonsItem course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.inversePrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: theme.primary, width: 2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Image.network(
            course.imagePath != null
                ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${course.imagePath!}"
                : 'https://i.pinimg.com/736x/c9/16/3f/c9163f1c1ca4e1c92630047686b6b581.jpg',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          course.name ?? 'No name ',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Số likes: ${course.totalLikes}'),
            const SizedBox(width: 16.0),
            Text('Số người học: ${course.totalLearners}'),
            const SizedBox(width: 16.0),
            Text('Tác giả: ${course.creator}'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            Get.to(() => CourseDetail(
                  courseId: course.id,
                ));
          },
          child: const Text('Xem chi tiết'),
        ),
      ),
    );
  }
}
