import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
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
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context)
          ? 150
          : 160, // Adjust height dynamically
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Material(
        color: theme.inversePrimary,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            Get.to(() => CourseDetail(
                  courseId: widget.course.id,
                ));
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.primary, width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.network(
                        widget.course.imagePath != null
                            ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${widget.course.imagePath!}"
                            : '${dotenv.env["API_BASE_URL"]}api/v1/images/course_icon.jpg',
                        width: Responsive.isDesktop(context) ? 100 : 50,
                        height: Responsive.isDesktop(context)
                            ? 100
                            : 50, // Adjust height dynamically
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context)
                          ? size.width * 0.4
                          : size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.course.name ?? 'No name',
                            style: Responsive.isDesktop(context)
                                ? textTheme.headlineLarge
                                : textTheme.titleMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Responsive(
                            mobile: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Số likes: ${widget.course.totalLikes}'),
                                const SizedBox(height: 4.0),
                                Text(
                                    'Số người học: ${widget.course.totalLearners}'),
                                const SizedBox(height: 4.0),
                                Text('Tác giả: ${widget.course.creator}'),
                              ],
                            ),
                            desktop: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Số likes: ${widget.course.totalLikes}'),
                                const SizedBox(width: 16.0),
                                Text(
                                    'Số người học: ${widget.course.totalLearners}'),
                                const SizedBox(width: 16.0),
                                Text('Tác giả: ${widget.course.creator}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                IconButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
