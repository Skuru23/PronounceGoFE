import 'package:flutter/material.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class SentenceCard extends StatelessWidget {
  final LessonSentenceBase sentence;

  const SentenceCard({super.key, required this.sentence});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: theme.inversePrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          sentence.sentence ?? 'No sentence',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
