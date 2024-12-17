import 'package:flutter/material.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/widgets/sentence_card.dart';
import 'package:pronounce_go/widgets/word_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseWordSentence extends StatelessWidget {
  final List<LessonSentenceBase> sentences;
  final List<WordBase> words;
  const CourseWordSentence(
      {super.key, required this.sentences, required this.words});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        children: [
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
                  child: Text(
                    'Danh sách từ',
                    style: textTheme.titleSmall,
                  )),
              children: words.map((item) {
                return WordCard(word: item);
              }).toList(),
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
                child: Text(
                  'Danh sách câu',
                  style: textTheme.titleSmall,
                ),
              ),
              children: sentences.map((item) {
                return SentenceCard(sentence: item);
              }).toList(),
            ),
          )
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.245,
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
                child: Text(
                  'Danh sách từ',
                  style: textTheme.titleSmall,
                ),
              ),
              children: words.map((item) {
                return WordCard(word: item);
              }).toList(),
            ),
          ),
          Container(
            width: size.width * 0.245,
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
                child: Text(
                  'Danh sách câu',
                  style: textTheme.titleSmall,
                ),
              ),
              children: sentences.map((item) {
                return SentenceCard(sentence: item);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
