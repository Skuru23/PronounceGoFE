import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pronounce_go/screens/learn_sentence/learn_sentence_card.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';
import 'package:pronounce_go/screens/learn_word/learn_word_card.dart';
import 'dart:math';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnSentenceScreen extends StatelessWidget {
  final List<LessonSentenceBase> lessonSentence = [
    LessonSentenceBase((b) => b
      ..id = 1
      ..sentence =
          'This is an example sentence 1 fjhsbfhkbakfbksfkbskdfbkjbsfbsfbhsbahdfkhsdfkbksdbksabf'),
    LessonSentenceBase((b) => b
      ..id = 2
      ..sentence = 'This is an example sentence 2'),
    LessonSentenceBase((b) => b
      ..id = 3
      ..sentence = 'This is an example sentence 3'),
    LessonSentenceBase((b) => b
      ..id = 4
      ..sentence = 'This is an example sentence 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Học câu'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: lessonSentence.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return LearnSentenceCard(
              sentence: lessonSentence[index],
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
