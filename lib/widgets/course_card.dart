import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseCard extends StatefulWidget {
  final ListLessonsItem course;
  final Future<void> Function() refetch;

  const CourseCard({super.key, required this.course, required this.refetch});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  final LessonRepository _lessonRepository = LessonRepository();

  Future<void> _likeCourse() async {
    try {
      await _lessonRepository.likeLesson(widget.course.id);
      showToast("Bạn thích bài học này <3", 'success');
      await widget.refetch();
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'] ?? "Error: $e", 'error');
      } else {
        showToast("Error: $e", 'error');
      }
    }
  }

  Future<void> _unlikeCourse() async {
    try {
      await _lessonRepository.unlikeLesson(widget.course.id);
      showToast("Bạn không thích bài học này nữa :(", 'success');
      await widget.refetch();
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'] ?? "Error: $e", 'error');
      } else {
        showToast("Error: $e", 'error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {
        Get.to(() => CourseDetail(
              courseId: widget.course.id,
            ));
      },
      child: Container(
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
              widget.course.imagePath != null
                  ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${widget.course.imagePath!}"
                  : 'https://i.pinimg.com/736x/c9/16/3f/c9163f1c1ca4e1c92630047686b6b581.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            widget.course.name ?? 'No name ',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Số likes: ${widget.course.totalLikes}'),
              const SizedBox(width: 16.0),
              Text('Số người học: ${widget.course.totalLearners}'),
              const SizedBox(width: 16.0),
              Text('Tác giả: ${widget.course.creator}'),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              (widget.course.isLiked ?? false)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: (widget.course.isLiked ?? false) ? Colors.red : null,
            ),
            onPressed: () async {
              if (widget.course.isLiked ?? false) {
                await _unlikeCourse();
              } else {
                await _likeCourse();
              }
            },
          ),
        ),
      ),
    );
  }
}
