import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';
import 'package:pronounce_go/screens/learn_word/learn_word_card.dart';
import 'dart:math';

import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnWordScreen extends StatelessWidget {
  final List<WordBase> flashcards = [
    WordBase((b) => b
      ..id = 1
      ..word = 'example'
      ..ipa = 'ɪɡˈzæmpəl'
      ..mean = 'a representative form or pattern'
      ..difficultLevel = 1
      ..pathOfSpeech = 'noun'),
    WordBase((b) => b
      ..id = 2
      ..word = 'cooking'
      ..ipa = 'ɪɡˈzæmpəl1'
      ..mean = 'a representative form or pattern'
      ..difficultLevel = 1
      ..pathOfSpeech = 'noun'),
    WordBase((b) => b
      ..id = 3
      ..word = 'example8'
      ..ipa = 'ɪɡˈzæmpəl8'
      ..mean = 'a representative form or pattern'
      ..difficultLevel = 1
      ..pathOfSpeech = 'noun'),
    WordBase((b) => b
      ..id = 4
      ..word = 'example7'
      ..ipa = 'ɪɡˈzæmpəl7'
      ..mean = 'a representative form or pattern'
      ..difficultLevel = 1
      ..pathOfSpeech = 'noun'),
    WordBase((b) => b
      ..id = 5
      ..word = 'example6'
      ..ipa = 'ɪɡˈzæmpəl6'
      ..mean = 'a representative form or pattern'
      ..difficultLevel = 1
      ..pathOfSpeech = 'noun')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Học từ vựng'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: flashcards.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return LearnWordCard(word: flashcards[index]);
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
