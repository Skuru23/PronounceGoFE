import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:get/get.dart';
import 'package:pronounce_go/screens/word_detail/word_detail_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class FrontWordCard extends StatelessWidget {
  const FrontWordCard(
      {super.key,
      required this.word,
      required this.onFlip,
      required this.isLearned,
      required this.isListening});
  final WordBase word;
  final VoidCallback onFlip;
  final bool isLearned;
  final bool isListening;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      color: theme.onPrimary,
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Icon(
                isLearned ? Icons.check_circle : Icons.circle,
                color: isLearned ? Colors.green : Colors.grey,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => WordDetailScreen(wordId: word.id ?? 0));
                },
                child: Icon(
                  Icons.question_mark,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    word.word ?? 'Unknown',
                    style:
                        textTheme.headlineLarge!.copyWith(color: theme.primary),
                  ),
                  SizedBox(height: 30),
                  IconButton(
                    onPressed: isListening ? () {} : onFlip,
                    icon: const Icon(Icons.mic),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(isListening
                          ? theme.primaryContainer
                          : theme.onPrimaryContainer),
                      iconColor: WidgetStateProperty.all(
                          isListening ? theme.primary : theme.onPrimary),
                      padding:
                          WidgetStateProperty.all(const EdgeInsets.all(16)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
