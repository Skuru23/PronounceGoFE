import 'package:flutter/material.dart';

class FrontWordCard extends StatelessWidget {
  const FrontWordCard({super.key, required this.word});
  final String word;

  @override
  Widget build(BuildContext context) {
    return Card(
              child: Center(
                child: Text(
                  word,
                  style: TextStyle(fontSize: 24.0),
                  
                ),
              ),
            );
  }
}