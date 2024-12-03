import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:get/get.dart';
import 'package:pronounce_go/screens/word_detail/word_detail_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class FrontSentenceCard extends StatelessWidget {
  const FrontSentenceCard(
      {super.key,
      required this.sentence,
      required this.onFlip,
      required this.isLearned,
      required this.isListening});
  final LessonSentenceBase sentence;
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
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sentence.sentence ?? 'Unknown',
                    textAlign: TextAlign.center,
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
