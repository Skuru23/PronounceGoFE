import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pronounce_go/api/progress_repository.dart';
import 'package:pronounce_go/screens/learn_sentence/learn_sentence_card.dart';
import 'package:pronounce_go/util.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnSentenceScreen extends StatefulWidget {
  final int progressId;

  const LearnSentenceScreen({super.key, required this.progressId});

  @override
  State<LearnSentenceScreen> createState() => _LearnSentenceScreenState();
}

class _LearnSentenceScreenState extends State<LearnSentenceScreen> {
  ProgressDetailResponse? progress;
  ProgressRepository progressRepository = ProgressRepository();

  Future<void> fetchProgress() async {
    try {
      var response =
          await progressRepository.getProgressDetail(widget.progressId);
      if (response.statusCode == 200) {
        setState(() {
          progress = response.data;
        });
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'], 'error');
      } else {
        showToast('Failed to fetch progress: $e', 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Học câu'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: progress?.sentences?.length ?? 0,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return LearnSentenceCard(
              sentence:
                  progress?.sentences?[index] ?? ProgressSentenceDetailItem(),
            );
          },
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).height * 0.75,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
          ),
        ),
      ),
    );
  }
}
