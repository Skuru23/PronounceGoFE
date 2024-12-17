import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/word_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/training_screen/result_text.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  final SpeechToText _speechToText = SpeechToText();
  String _checkText = '';
  CheckPronounceResponse? res;

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    await _speechToText.initialize();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) async {
    if (_speechToText.isNotListening && _checkText.isNotEmpty) {
      final WordRepository wordRepository = WordRepository();
      try {
        var response =
            await wordRepository.checkWord(result.recognizedWords, _checkText);
        if (response.statusCode == 200) {
          setState(() {
            res = response.data;
          });
        }
      } catch (e) {
        if (e is DioException) {
          dioExceptionHandle(e);
        } else {
          showToast('Error: $e', 'error');
        }
      }
    }
  }

  void startCheck() async {
    if (_speechToText.isNotListening) {
      try {
        await _speechToText.listen(
            localeId: 'en_GB',
            onResult: _onSpeechResult,
            listenFor: const Duration(seconds: 5));
      } catch (e) {
        showToast('Error: $e', 'error');
      }
      setState(() {});
    } else {
      await _speechToText.stop();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          width: Responsive.isDesktop(context) ? size.width * 0.5 : size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.face),
                  label: Text("Từ hoặc câu"),
                  hintText: "Điền từ hoặc câu cần kiểm tra",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _checkText = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: IconButton(
                  onPressed: startCheck,
                  icon: const Icon(Icons.mic),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        _speechToText.isListening
                            ? theme.primary
                            : theme.primaryContainer),
                    padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
                  ),
                ),
              ),
              Center(
                child: res != null
                    ? ResultText(response: res!)
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
