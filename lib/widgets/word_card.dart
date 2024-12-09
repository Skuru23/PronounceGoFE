import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/word_detail/word_detail_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class WordCard extends StatelessWidget {
  final WordBase word;

  const WordCard({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        Get.to(() => WordDetailScreen(wordId: word.id ?? 0));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: theme.inversePrimary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          title: Text(
            word.word ?? 'No word',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Phát âm: ${word.ipa}'),
            ],
          ),
        ),
      ),
    );
  }
}
