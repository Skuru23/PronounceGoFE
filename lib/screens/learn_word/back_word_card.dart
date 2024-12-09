import 'package:flutter/material.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class BackWordCard extends StatelessWidget {
  const BackWordCard(
      {super.key, required this.word, this.point, required this.error});
  final ProgressWordDetailItem word;
  final int? point;
  final List<int> error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.onPrimary,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              word.word,
              style: theme.textTheme.displayMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: _buildIpaTextSpans(word.ipa ?? 'Unknown', theme),
              ),
            ),
            const SizedBox(height: 20),
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
