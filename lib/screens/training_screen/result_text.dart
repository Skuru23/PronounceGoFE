import 'package:flutter/material.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ResultText extends StatelessWidget {
  final CheckPronounceResponse response;

  const ResultText({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return AnimatedScale(
      scale: 1.0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: theme.primaryContainer,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                response.point == 100 ? 'Perfect' : 'Score: ${response.point}',
                style: textTheme.headlineMedium?.copyWith(
                  color: response.point == 100 ? Colors.green : Colors.brown,
                ),
              ),
              SizedBox(height: 16.0),
              if (_isSingleWord(response.text))
                RichText(
                  text: TextSpan(
                    children: _buildTextSpans(textTheme),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isSingleWord(String text) {
    return text.trim().split(' ').length == 1;
  }

  List<TextSpan> _buildTextSpans(TextTheme textTheme) {
    List<TextSpan> spans = [];
    for (int i = 0; i < response.ipa.length; i++) {
      bool isError = response.error.contains(i);
      spans.add(
        TextSpan(
          text: response.ipa[i],
          style: textTheme.bodyLarge?.copyWith(
            color: isError ? Colors.red : Colors.black,
            fontSize: 20,
          ),
        ),
      );
    }
    return spans;
  }
}
