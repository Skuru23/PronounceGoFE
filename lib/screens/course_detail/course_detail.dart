import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/course_detail/course_detail_header.dart';
import 'package:pronounce_go/screens/course_detail/course_word_sentence.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_detail_screen.dart';
import 'package:pronounce_go/screens/progress_screen/progress_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/sentence_card.dart';
import 'package:pronounce_go/widgets/word_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseDetail extends StatefulWidget {
  final int courseId;

  const CourseDetail({super.key, required this.courseId});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  final LessonRepository lessonRepository = LessonRepository();
  GetLessonDetailResponse? lessonDetail;

  @override
  void initState() {
    super.initState();
    lessonRepository.getLessonDetail(widget.courseId).then((response) {
      setState(() {
        lessonDetail = response.data;
      });
    });
  }

  void learnLesson() async {
    if (lessonDetail?.isInProgress == true) {
      showToast('Bài học này đã được bắt đầu', 'success');
      Get.to(() => const ProgressScreen());
    } else {
      try {
        final response = await lessonRepository.learnLesson(widget.courseId);
        if (response.statusCode == 200) {
          showToast('Bắt đầu học bài này', 'success');
          Get.to(
              () => ProgressDetailScreen(progressId: response.data.progress));
        }
      } catch (e) {
        if (e is DioException) {
          showToast(e.response?.data['message'] ?? "Error: $e", 'error');
        } else {
          showToast("Error: $e", 'error');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài học ${lessonDetail?.name ?? 'Unknown'}'),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter, // Align to the top center
          child: Container(
            width:
                Responsive.isDesktop(context) ? size.width * 0.5 : size.width,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Ensure it starts from the top
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Center horizontally
              children: [
                lessonDetail != null
                    ? CourseDetailHeader(lessonDetail: lessonDetail!)
                    : Container(),
                const SizedBox(height: 16.0),
                CourseWordSentence(
                    sentences: lessonDetail?.sentences?.toList() ?? [],
                    words: lessonDetail?.words?.toList() ?? []),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5 > 400
                      ? 400
                      : MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: learnLesson,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: theme.onPrimary,
                      backgroundColor:
                          theme.primary, // Set color for onPressed state
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                    ),
                    child: Text(
                      lessonDetail?.isInProgress == true
                          ? 'Tiếp tục học'
                          : 'Học',
                      style: TextStyle(color: theme.onPrimary),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
