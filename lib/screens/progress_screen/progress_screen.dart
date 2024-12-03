import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/progress_screen/progress_card.dart';

class ProgressScreen extends StatefulWidget {
  ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  final List<LessonProgress> progressList = [
    LessonProgress(
        lessonId: 1,
        lessonName: 'Lesson 1',
        totalWords: 100,
        remainingWords: 20,
        totalSentences: 50,
        remainingSentences: 10),
    LessonProgress(
        lessonId: 2,
        lessonName: 'Lesson 2',
        totalWords: 80,
        remainingWords: 10,
        totalSentences: 40,
        remainingSentences: 5),
    // Add more lessons as needed
  ];

  String searchQuery = ''; // Moved searchQuery here

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    // Removed searchQuery initialization from here

    return Scaffold(
      appBar: AppBar(
        title: Text('Tiến trình'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              fillColor: theme.onSecondary,
              filled: true,
              hintText: 'Search...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              prefixIcon: const Icon(Icons.search),
            ),
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
        ),
        const SizedBox(height: 10.0),
        Expanded(
          child: ListView.builder(
            itemCount: progressList
                .where((lesson) => lesson.lessonName
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase()))
                .length,
            itemBuilder: (context, index) {
              final filteredList = progressList
                  .where((lesson) => lesson.lessonName
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase()))
                  .toList();
              final lesson = filteredList[index];
              return ProgressCard(
                lesson: lesson,
              );
            },
          ),
        ),
      ]),
    );
  }
}

class LessonProgress {
  final int lessonId;
  final String lessonName;
  final int totalWords;
  final int remainingWords;
  final int totalSentences;
  final int remainingSentences;

  LessonProgress({
    required this.lessonId,
    required this.lessonName,
    required this.totalWords,
    required this.remainingWords,
    required this.totalSentences,
    required this.remainingSentences,
  });

  double get finishPercent =>
      ((totalWords + totalSentences - remainingSentences - remainingWords) /
          (totalWords + totalSentences)) *
      100;
}
