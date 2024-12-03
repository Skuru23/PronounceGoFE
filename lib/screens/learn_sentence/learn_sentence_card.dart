import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/learn_sentence/back_sentence_cart.dart';
import 'package:pronounce_go/screens/learn_sentence/front_sentence_card.dart';
import 'package:pronounce_go/screens/learn_word/back_word_card.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnSentenceCard extends StatefulWidget {
  const LearnSentenceCard({super.key, required this.sentence});
  final LessonSentenceBase sentence;

  @override
  State<LearnSentenceCard> createState() => _LearnWordCardState();
}

class _LearnWordCardState extends State<LearnSentenceCard> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  List<int> error = [];
  bool isListening = false;
  int? point;
  String? ipa;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      front: FrontSentenceCard(
        sentence: widget.sentence,
        isLearned: widget.sentence.id! % 2 == 0 ? true : false,
        isListening: isListening,
        onFlip: () {
          setState(() {
            isListening = true;
          });
          Future.delayed(Duration(seconds: 3), () {
            final random = Random();
            final randomNumber = random.nextInt(5);
            cardKey.currentState?.toggleCard();
            error.clear();
            error.add(randomNumber);
            setState(() {
              error = error;
              isListening = false;
              point = widget.sentence.id! % 2 == 0 ? 100 : 0;
              ipa = widget.sentence.sentence;
            });
          });
        },
      ),
      back: BackSentenceCard(
        sentence: widget.sentence,
        ipa: ipa,
        error: error,
        point: point,
      ),
    );
  }
}
