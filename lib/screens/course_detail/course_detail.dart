import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_detail_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/sentence_card.dart';
import 'package:pronounce_go/widgets/word_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class Word {
  final String word;
  final String meaning;

  Word({required this.word, required this.meaning});
}

class Sentence {
  final String sentence;
  final String translation;

  Sentence({required this.sentence, required this.translation});
}

class CourseDetail extends StatefulWidget {
  final int courseId;

  const CourseDetail({super.key, required this.courseId});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  final LessonRepository lessonRepository = LessonRepository();
  GetLessonDetailResponse? lessonDetail;
  final List<Word> words = [
    Word(word: 'Hello', meaning: 'A greeting'),
    Word(
        word: 'World',
        meaning: 'The earth, together with all of its countries and peoples'),
    // Add more words here
  ];

  final List<Sentence> sentences = [
    Sentence(
        sentence: 'Hello, world!',
        translation: 'A common phrase used in programming'),
    Sentence(
        sentence: 'How are you?', translation: 'A common greeting question'),
    // Add more sentences here
  ];

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
      Get.back();
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài học ${lessonDetail?.name ?? 'Unknown'}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.primary, width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.network(
                        lessonDetail?.imagePath != null
                            ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${lessonDetail?.imagePath!}"
                            : 'https://i.pinimg.com/736x/c9/16/3f/c9163f1c1ca4e1c92630047686b6b581.jpg',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lessonDetail?.name ?? 'Unknown',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          lessonDetail?.description ?? 'No description',
                        ),
                        if (lessonDetail?.userOwnerId != null)
                          Text(
                            'Người tạo: ${lessonDetail?.creatorName ?? 'Unknown'}',
                          ),
                        if (lessonDetail?.groupOwnerId != null)
                          Text(
                            'Nhóm: ${lessonDetail?.groupOwnerName ?? 'Unknown'}',
                          )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Danh sách từ',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                children: lessonDetail?.words?.map((item) {
                      return WordCard(word: item);
                    }).toList() ??
                    [],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Danh sách câu',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                children: lessonDetail?.sentences?.map((item) {
                      return SentenceCard(sentence: item);
                    }).toList() ??
                    [],
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
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
                  lessonDetail?.isInProgress == true ? 'Tiếp tục học' : 'Học',
                  style: TextStyle(color: theme.onPrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
