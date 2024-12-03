import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';

class LearnWordScreen extends StatelessWidget {
  final List<Map<String, String>> flashcards = [
    {'question': 'Hello', 'answer': 'Hola'},
    {'question': 'Goodbye', 'answer': 'Adiós'},
    {'question': 'Please', 'answer': 'Por favor'},
    {'question': 'Thank you', 'answer': 'Gracias'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Words'),
      ),
      body: CarouselSlider.builder(
        itemCount: flashcards.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return FlipCard(
            flipOnTouch: false,
            direction: FlipDirection.HORIZONTAL,
            front: FrontWordCard(word: flashcards[index]['question']!),
            back: Card(
              child: Center(
                child: Text(
                  flashcards[index]['answer']!,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 400.0,
          enlargeCenterPage: true,
          autoPlay: false,
          aspectRatio: 2.0,
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}