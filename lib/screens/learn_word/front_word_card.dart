import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pronounce_go/screens/word_detail/word_detail_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class FrontWordCard extends StatelessWidget {
  const FrontWordCard(
      {super.key,
      required this.word,
      required this.onCheck,
      required this.isListening});
  final ProgressWordDetailItem word;
  final VoidCallback onCheck;
  final bool isListening;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      color: theme.onPrimary,
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Icon(
                word.status == ItemStatus.DONE
                    ? Icons.check_circle
                    : Icons.circle,
                color:
                    word.status == ItemStatus.DONE ? Colors.green : Colors.grey,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => WordDetailScreen(wordId: word.wordId));
                },
                child: const Icon(
                  Icons.question_mark,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    word.word,
                    style:
                        textTheme.headlineLarge!.copyWith(color: theme.primary),
                  ),
                  const SizedBox(height: 30),
                  IconButton(
                    onPressed: isListening ? () {} : onCheck,
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
