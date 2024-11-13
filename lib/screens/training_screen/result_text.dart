import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final String ipa;
  final List<int> error;

  ResultText({required this.ipa, required this.error});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _buildTextSpans(),
      ),
    );
  }

  List<TextSpan> _buildTextSpans() {
    List<TextSpan> spans = [];
    for (int i = 0; i < ipa.length; i++) {
      bool isError = error.contains(i);
      spans.add(
        TextSpan(
          text: ipa[i],
          style: TextStyle(
            color: isError ? Colors.red : Colors.black,
            fontSize: 20, // tùy chỉnh kích thước chữ ở đây nếu muốn
          ),
        ),
      );
    }
    return spans;
  }
}
