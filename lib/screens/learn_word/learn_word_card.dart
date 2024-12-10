import 'package:dio/dio.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/learn_repository.dart';
import 'package:pronounce_go/screens/learn_word/back_word_card.dart';
import 'package:pronounce_go/screens/learn_word/front_word_card.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class LearnWordCard extends StatefulWidget {
  const LearnWordCard({super.key, required this.word});
  final ProgressWordDetailItem word;

  @override
  State<LearnWordCard> createState() => _LearnWordCardState();
}

class _LearnWordCardState extends State<LearnWordCard> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  final SpeechToText _speechToText = SpeechToText();
  final LearnRepository learnRepository = LearnRepository();
  LearnWordResponse? checkResult;

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    try {
      await _speechToText.initialize();
    } catch (e) {
      showToast('Failed to initialize speech recognition: $e', 'error');
    }
    setState(() {});
  }

  void startCheck() async {
    if (_speechToText.isNotListening) {
      await _speechToText.listen(
          localeId: 'en_GB',
          onResult: _onSpeechResult,
          listenFor: const Duration(seconds: 5));
    } else {
      await _speechToText.stop();
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) async {
    if (_speechToText.isNotListening) {
      try {
        var response = await learnRepository.learnWord(
            widget.word.id, result.recognizedWords);
        if (response.statusCode == 200) {
          setState(() {
            checkResult = response.data;
          });
        }

        if (response.data?.point == 100) {
          showToast("Hoàn hảo", 'success');
        } else {
          showToast("Cố gắng lại nào", 'warning');
        }
        cardKey.currentState?.toggleCard();
      } catch (e) {
        if (e is DioException) {
          showToast(e.response?.data['message'], 'error');
        } else {
          showToast('Something went wrong: $e', 'error');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      front: FrontWordCard(
        word: widget.word,
        isListening: _speechToText.isListening,
        onCheck: startCheck,
      ),
      back: BackWordCard(
        word: widget.word,
        result: checkResult,
      ),
    );
  }
}
