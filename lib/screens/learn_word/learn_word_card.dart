import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/learn_word/back_word_card.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class LearnWordCard extends StatefulWidget {
  const LearnWordCard({super.key, required this.word});
  final WordBase word;

  @override
  State<LearnWordCard> createState() => _LearnWordCardState();
}

class _LearnWordCardState extends State<LearnWordCard> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  List<int> error = [];
  bool isListening = false;
  int? point;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      front: FrontWordCard(
        word: widget.word,
        isLearned: widget.word.id! % 2 == 0 ? true : false,
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
              point = widget.word.id! % 2 == 0 ? 100 : 0;
            });
          });
        },
      ),
      back: BackWordCard(
        word: widget.word,
        error: error,
        point: point,
      ),
    );
  }
}
