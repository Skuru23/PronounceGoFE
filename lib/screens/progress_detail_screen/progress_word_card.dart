import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/learn_word/learn_word_screem.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_detail_screen.dart';

class ProgressWordCard extends StatelessWidget {
  final Word word;

  const ProgressWordCard({super.key, required this.word});

  Icon _getStatusIcon(WordStatus status) {
    switch (status) {
      case WordStatus.DONE:
        return Icon(Icons.check_circle, color: Colors.green);
      case WordStatus.REMAIN:
        return Icon(Icons.autorenew, color: Colors.orange);
      default:
        return Icon(Icons.help, color: Colors.grey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: () {
        Get.to(() => LearnWordScreen());
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
          word.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          _getStatusIcon(word.status),
        ],
        ),
      ),
      ),
    );
  }
}
