import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_detail_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressCard extends StatelessWidget {
  final ListingProgressItem lesson;

  const ProgressCard({Key? key, required this.lesson}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Card(
      color: theme.onSecondary,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(lesson.lessonName ?? 'Lesson Name',
                      style: textTheme.headlineSmall),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: theme.inversePrimary,
                  ),
                  onPressed: () {
                    Get.to(() => ProgressDetailScreen(
                          progressId: lesson.id,
                        ));
                  },
                  child: const Text('Chi tiết'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              height: 20.0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: LiquidLinearProgressIndicator(
                  value: lesson.finishPercent! /
                      100, // Set the progress value here
                  valueColor: AlwaysStoppedAnimation(
                    lesson.finishPercent == 100 ? Colors.green : theme.primary,
                  ),
                  backgroundColor: lesson.finishPercent == 100
                      ? Colors.green
                      : theme.onPrimary,
                  borderColor: theme.primary,
                  borderWidth: 2.0,
                  borderRadius: 12.0,
                  direction: Axis.horizontal,
                  center: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Từ: ${(lesson.totalWord ?? 0) - (lesson.remainWord ?? 0)}/${lesson.totalWord ?? 0}',
                          style: TextStyle(color: theme.onSurface)),
                      const SizedBox(width: 16.0),
                      Text(
                          'Câu: ${(lesson.totalSentence ?? 0) - (lesson.remainSentence ?? 0)}/${lesson.totalSentence ?? 0}',
                          style: TextStyle(color: theme.onSurface)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
