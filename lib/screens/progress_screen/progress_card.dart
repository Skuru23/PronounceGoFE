import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_detail_screen.dart';
import 'progress_screen.dart';

// class ProgressCard extends StatefulWidget {
//   final LessonProgress lesson;

//   const ProgressCard({Key? key, required this.lesson}) : super(key: key);

//   @override
//   State<ProgressCard> createState() => _ProgressCardState();
// }

// class _ProgressCardState extends State<ProgressCard> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200, // Provide a bounded height
//       child: Card(
//         margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               LiquidLinearProgressIndicator(
//                 value: 0.5, // Set the progress value here
//                 valueColor: AlwaysStoppedAnimation(Colors.blue),
//                 backgroundColor: Colors.white,
//                 borderColor: Colors.blue,
//                 borderWidth: 1.0,
//                 borderRadius: 12.0,
//                 direction: Axis.vertical,
//                 center: Text('${(0.5 * 100).toStringAsFixed(0)}%'),
//               ),
//               const SizedBox(width: 16.0),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.lesson.lessonName,
//                       style: Theme.of(context).textTheme.headlineSmall,
//                     ),
//                     const SizedBox(height: 8.0),
//                     Text('Total Words: ${widget.lesson.totalWords}'),
//                     Text('Remaining Words: ${widget.lesson.remainingWords}'),
//                     const SizedBox(height: 8.0),
//                     Text(
//                         '${widget.lesson.finishPercent.toStringAsFixed(2)}% Completed'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ProgressCard extends StatelessWidget {
  final LessonProgress lesson;

  const ProgressCard({Key? key, required this.lesson}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
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
                Text(
                  lesson.lessonName,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ProgressDetailScreen());
                  },
                  child: Text('See Detail'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 20.0,
              child: LiquidLinearProgressIndicator(
                value:
                    lesson.finishPercent / 100, // Set the progress value here
                valueColor: AlwaysStoppedAnimation(theme.primary),
                backgroundColor: theme.onPrimary,
                borderColor: theme.primary,
                borderWidth: 2.0,
                borderRadius: 12.0,
                direction: Axis.horizontal,
                center: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Words: ${lesson.remainingWords}/${lesson.totalWords}',
                        style: TextStyle(color: theme.onSurface)),
                    SizedBox(width: 16.0),
                    Text(
                        'Sentences: ${lesson.remainingSentences}/${lesson.totalSentences}',
                        style: TextStyle(color: theme.onSurface)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
