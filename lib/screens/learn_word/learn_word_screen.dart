import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pronounce_go/api/progress_repository.dart';
import 'package:pronounce_go/screens/learn_word/learn_word_card.dart';
import 'package:pronounce_go/util.dart';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnWordScreen extends StatefulWidget {
  final int progressId;

  const LearnWordScreen({super.key, required this.progressId});
  @override
  State<LearnWordScreen> createState() => _LearnWordScreenState();
}

class _LearnWordScreenState extends State<LearnWordScreen> {
  List<ProgressWordDetailItem> words = [];
  final ProgressRepository _progressRepository = ProgressRepository();

  Future<void> fetchWords() async {
    try {
      final response =
          await _progressRepository.getProgressDetail(widget.progressId);
      setState(() {
        words = List<ProgressWordDetailItem>.from(
            (response.data?.words ?? []) as Iterable<dynamic>);
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
    fetchWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Học từ vựng'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: words.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return LearnWordCard(word: words[index]);
          },
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).height * 0.5,
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
