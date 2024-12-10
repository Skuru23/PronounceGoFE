import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/progress_repository.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_sentence_card.dart';
import 'package:pronounce_go/screens/progress_detail_screen/progress_word_card.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressDetailScreen extends StatefulWidget {
  final int progressId;

  const ProgressDetailScreen({super.key, required this.progressId});

  @override
  ProgressDetailScreenState createState() => ProgressDetailScreenState();
}

class ProgressDetailScreenState extends State<ProgressDetailScreen> {
  ProgressDetailResponse? progressDetail;

  final ProgressRepository _progressRepository = ProgressRepository();

  Future<void> fetchProgressDetail() async {
    try {
      final response =
          await _progressRepository.getProgressDetail(widget.progressId);
      setState(() {
        progressDetail = response.data;
      });
    } catch (e) {
      if (e is DioException) {
        showToast(' ${e.response?.data['message']} ', 'error');
      } else {
        showToast('Error fetching progress detail: $e', 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchProgressDetail();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài học ${progressDetail?.lessonName}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Từ vựng',
                    style: textTheme.headlineSmall,
                  ),
                ),
                children: progressDetail?.words?.map((word) {
                      return ProgressWordCard(
                        word: word,
                        progressId: widget.progressId,
                      );
                    }).toList() ??
                    [],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: theme.secondaryContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Câu',
                    style: textTheme.headlineSmall,
                  ),
                ),
                children: progressDetail?.sentences?.map((sentence) {
                      return ProgressSentenceCard(
                        sentence: sentence,
                        progressId: widget.progressId,
                      );
                    }).toList() ??
                    [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
