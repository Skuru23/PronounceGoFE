import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/learn_sentence/learn_sentence_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressSentenceCard extends StatelessWidget {
  final ProgressSentenceDetailItem sentence;

  const ProgressSentenceCard({super.key, required this.sentence});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () => {Get.to(() => LearnSentenceScreen())},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                sentence.sentence,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              getStatusIcon(sentence.status ?? ItemStatus.NOT_STARTED),
            ],
          ),
        ),
      ),
    );
  }
}
