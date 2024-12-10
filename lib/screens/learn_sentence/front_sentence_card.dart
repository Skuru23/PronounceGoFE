import 'package:flutter/material.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class FrontSentenceCard extends StatelessWidget {
  const FrontSentenceCard(
      {super.key,
      required this.sentence,
      required this.onCheck,
      required this.isListening});
  final ProgressSentenceDetailItem sentence;
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
                sentence.status == ItemStatus.DONE
                    ? Icons.check_circle
                    : Icons.circle,
                color: sentence.status == ItemStatus.DONE
                    ? Colors.green
                    : Colors.grey,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sentence.sentence,
                    textAlign: TextAlign.center,
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
