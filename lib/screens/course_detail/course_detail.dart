import 'package:flutter/material.dart';

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

class CourseDetail extends StatelessWidget {
  final List<Word> words = [
    Word(word: 'Hello', meaning: 'A greeting'),
    Word(word: 'World', meaning: 'The earth, together with all of its countries and peoples'),
    // Add more words here
  ];

  final List<Sentence> sentences = [
    Sentence(sentence: 'Hello, world!', translation: 'A common phrase used in programming'),
    Sentence(sentence: 'How are you?', translation: 'A common greeting question'),
    // Add more sentences here
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  return ListTile(
                    title: Text(word.word),
                    subtitle: Text(word.meaning),
                  );
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
                children: sentences.map((sentence) {
                  return ListTile(
                    title: Text(sentence.sentence),
                    subtitle: Text(sentence.translation),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your learn button action here
              },
              child: Text('Learn'),
            ),
          ],
        ),
      ),
    );
  }
}