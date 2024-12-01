import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_detail/course_detail.dart';
import 'package:pronounce_go/screens/group_courses/group_courses.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class SentenceCard extends StatelessWidget {
  final LessonSentenceBase sentence;

  const SentenceCard({super.key, required this.sentence});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: theme.inversePrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          sentence.sentence ?? 'No sentence',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
