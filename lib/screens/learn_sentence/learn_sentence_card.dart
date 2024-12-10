import 'package:dio/dio.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/learn_repository.dart';
import 'package:pronounce_go/screens/learn_sentence/back_sentence_cart.dart';
import 'package:pronounce_go/screens/learn_sentence/front_sentence_card.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class LearnSentenceCard extends StatefulWidget {
  const LearnSentenceCard({super.key, required this.sentence});
  final ProgressSentenceDetailItem sentence;

  @override
  State<LearnSentenceCard> createState() => _LearnWordCardState();
}

class _LearnWordCardState extends State<LearnSentenceCard> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  final LearnRepository learnRepository = LearnRepository();
  final SpeechToText _speechToText = SpeechToText();
  LearnSentenceResponse? checkResult;
  List<int> error = [];
  bool isListening = false;

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
      setState(() {
        isListening = true;
      });
      await _speechToText.listen(
          localeId: 'en_GB',
          onResult: _onSpeechResult,
          listenFor: const Duration(seconds: 10));
    } else {
      await _speechToText.stop();
      setState(() {
        isListening = false;
      });
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) async {
    if (_speechToText.isNotListening) {
      try {
        var response = await learnRepository.learnSentence(
            widget.sentence.id, result.recognizedWords);
        if (response.statusCode == 200) {
          setState(() {
            checkResult = response.data;
            isListening = false;
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

        setState(() {
          isListening = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      front: FrontSentenceCard(
        sentence: widget.sentence,
        isListening: isListening,
        onCheck: startCheck,
      ),
      back: BackSentenceCard(
        sentence: widget.sentence,
        checkResult: checkResult,
      ),
    );
  }
}
