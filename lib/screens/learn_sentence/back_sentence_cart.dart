import 'package:flutter/material.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class BackSentenceCard extends StatelessWidget {
  const BackSentenceCard({
    super.key,
    required this.sentence,
    this.checkResult,
  });
  final ProgressSentenceDetailItem sentence;
  final LearnSentenceResponse? checkResult;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.onPrimary,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sentence.sentence,
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            if (checkResult?.ipa != null)
              RichText(
                text: TextSpan(
                  children: _buildIpaTextSpans(checkResult!.ipa, theme),
                ),
              ),
            const SizedBox(height: 20),
            if (checkResult != null)
              if (checkResult?.point == 100)
                Text(
                  'Perfect!',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.green,
                  ),
                )
              else
                Text(
                  'Point: ${checkResult?.point}',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> _buildIpaTextSpans(String ipa, ThemeData theme) {
    List<TextSpan> spans = [];
    for (int i = 0; i < ipa.length; i++) {
      spans.add(
        TextSpan(
          text: ipa[i],
          style: theme.textTheme.titleMedium!.copyWith(
            color: checkResult?.error.contains(i) == true
                ? Colors.red
                : theme.colorScheme.primary,
            fontFamily: 'RobotoMono',
          ),
        ),
      );
    }
    return spans;
  }
}
