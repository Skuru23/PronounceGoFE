import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_sentence_card.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_word_card.dart';

enum WordStatus { NOT_START, REMAIN, DONE }

class Word {
  final String name;
  final WordStatus status;

  Word({required this.name, required this.status});
}

class Sentence {
  final String name;
  final WordStatus status;

  Sentence({required this.name, required this.status});
}

class ProgressDetailScreen extends StatefulWidget {
  @override
  _ProgressDetailScreenState createState() => _ProgressDetailScreenState();
}

class _ProgressDetailScreenState extends State<ProgressDetailScreen> {
  final List<Word> words = [
    Word(name: 'Word 1', status: WordStatus.NOT_START),
    Word(name: 'Word 2', status: WordStatus.REMAIN),
    Word(name: 'Word 3', status: WordStatus.DONE),
  ];

  final List<Sentence> sentences = [
    Sentence(name: 'Word 1 abcd', status: WordStatus.NOT_START),
    Sentence(name: 'Word 2 cook', status: WordStatus.REMAIN),
    Sentence(name: 'Word 3 lmao', status: WordStatus.DONE),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Detail'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.secondaryContainer,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ExpansionTile(
              title: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.secondaryContainer,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('Words'),
              ),
              children: words.map((word) {
                return ProgressWordCard(word: word);
              }).toList(),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              color: theme.secondaryContainer,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ExpansionTile(
              title: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.secondaryContainer,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('Sentences'),
              ),
              children: sentences.map((course) {
                return ProgressSentenceCard(word: course);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
