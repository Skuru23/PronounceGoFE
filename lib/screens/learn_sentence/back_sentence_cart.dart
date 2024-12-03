import 'package:flutter/material.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class BackSentenceCard extends StatelessWidget {
  const BackSentenceCard(
      {super.key,
      required this.sentence,
      this.point,
      required this.error,
      this.ipa});
  final LessonSentenceBase sentence;
  final String? ipa;
  final int? point;
  final List<int> error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.onPrimary,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sentence.sentence ?? 'Unknown',
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 20),
            if (ipa != null)
              RichText(
                text: TextSpan(
                  children: _buildIpaTextSpans(ipa ?? 'Unknown', theme),
                ),
              ),
            SizedBox(height: 20),
            if (point != null)
              if (point == 100)
                Text(
                  'Perfect!',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.green,
                  ),
                )
              else
                Text(
                  'Point: $point',
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
            color: error.contains(i) ? Colors.red : theme.colorScheme.primary,
            fontFamily: 'RobotoMono',
          ),
        ),
      );
    }
    return spans;
  }
}
