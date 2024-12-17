import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go/screens/course_screen/course_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeLessonSlider extends StatefulWidget {
  const HomeLessonSlider({super.key});

  @override
  State<HomeLessonSlider> createState() => _HomeLessonSliderState();
}

class _HomeLessonSliderState extends State<HomeLessonSlider> {
  LessonRepository lessonRepository = LessonRepository();
  RecommendLessonResponse? lessons;

  Future<void> recommendLesson() async {
    try {
      final response = await lessonRepository.recommendLesson();
      setState(() {
        lessons = response.data;
      });
    } catch (e) {
      if (e is DioException) {
        dioExceptionHandle(e);
      } else {
        showToast("Error: $e", 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    recommendLesson();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (lessons != null) ...[
          if (lessons!.hotLessons != null && lessons!.hotLessons!.isNotEmpty)
            _buildCarouselSlider(lessons!.hotLessons!, 'Bài học hot'),
          const SizedBox(height: 16),
          if (lessons!.newLessons != null && lessons!.newLessons!.isNotEmpty)
            _buildCarouselSlider(lessons!.newLessons!, 'Bài học mới'),
        ] else
          const CircularProgressIndicator(),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            Get.to(() => const CourseScreen());
          },
          label: const Text('Khám phá các khóa học'),
          icon: const Icon(Icons.book),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(size.width * 0.5, 36),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }

  Widget _buildCarouselSlider(BuiltList<LessonBase> lessons, String title) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return Container(
      color: theme.primaryContainer,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: textTheme.headlineMedium,
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 140,
              enlargeCenterPage: true,
              autoPlay: true,
              viewportFraction: 0.5,
            ),
            items: lessons.map((lesson) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => CourseDetail(courseId: lesson.id ?? 0));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: theme.primary, width: 2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.network(
                                lesson.imagePath != null
                                    ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${lesson.imagePath!}"
                                    : '${dotenv.env["API_BASE_URL"]}api/v1/images/course_icon.jpg',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                lesson.name ?? '',
                                style: textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
