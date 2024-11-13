import 'package:flutter/material.dart';
import 'package:pronounce_go/api/word_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/training_screen/result_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = 'Cooking';
  String _checkText = '';
  String _result = '';
  bool _checked = false;
  String _ipa = '';
  List<int> _error = [];

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) async {
    if (_speechToText.isNotListening) {
      final WordRepository wordRepository = WordRepository();
      try {
        var response =
            await wordRepository.checkWord(_checkText, result.recognizedWords);
        if (response.statusCode == 200) {
          setState(() {
            _lastWords = result.recognizedWords;
            _result = "${response.data!.point}%";
            _ipa = response.data!.ipa;
            _error = response.data!.error.toList();
            _checked = true;
          });
        }
      } on Exception catch (e) {
        print(e);
      }
    }
    ;
  }

  void startCheck() async {
    if (_speechToText.isNotListening) {
      await _speechToText.listen(
          localeId: 'en_GB',
          onResult: _onSpeechResult,
          listenFor: Duration(seconds: 5));
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
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          width: Responsive.isDesktop(context) ? size.width * 0.5 : size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text("Word or senetence"),
                  hintText: "Enter the word or sentence you want to check",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _checkText = value ?? '';
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(_lastWords),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: _checked
                    ? ResultText(ipa: _ipa, error: _error)
                    : SizedBox.shrink(),
              ),
              SizedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
