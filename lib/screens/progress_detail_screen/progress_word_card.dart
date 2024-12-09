import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/learn_word/learn_word_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressWordCard extends StatelessWidget {
  final ProgressWordDetailItem word;
  final int progressId;

  const ProgressWordCard(
      {super.key, required this.word, required this.progressId});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {
          Get.to(() => LearnWordScreen(
                progressId: progressId,
              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                word.word,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              getStatusIcon(word.status ?? ItemStatus.NOT_STARTED),
            ],
          ),
        ),
      ),
    );
  }
}
