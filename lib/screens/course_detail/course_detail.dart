import 'package:flutter/material.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
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

  CourseDetail({super.key, required this.courseId});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  final LessonRepository lessonRespository = LessonRepository();
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
    lessonRespository.getLessonDetail(widget.courseId).then((response) {
      setState(() {
        lessonDetail = response.data;
      });
    });
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lessonDetail?.name ?? 'Unknown',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    ),
                    SizedBox(height: 16.0),
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
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
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
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
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
            SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5 > 400
                  ? 400
                  : MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
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
                  'Học',
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
