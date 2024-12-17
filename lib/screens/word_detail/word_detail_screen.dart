import 'package:flutter/material.dart';
import 'package:pronounce_go/api/word_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class WordDetailScreen extends StatefulWidget {
  final int wordId;

  WordDetailScreen({required this.wordId});

  @override
  State<WordDetailScreen> createState() => _WordDetailScreenState();
}

class _WordDetailScreenState extends State<WordDetailScreen> {
  final WordRepository wordRepository = WordRepository();
  WordDetailResponse? word;

  @override
  void initState() {
    super.initState();
    wordRepository.getWord(widget.wordId).then((response) {
      setState(() {
        word = response.data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết từ vựng'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: Responsive.isDesktop(context) ? size.width * 0.6 : size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    word?.word ?? 'Unknown',
                    style:
                        textTheme.headlineLarge?.copyWith(color: theme.primary),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    word?.ipa ?? 'Unknown',
                    style: textTheme.labelLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Loại từ:',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    word?.pathOfSpeech ?? 'Unknown',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Nghĩa:',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  ...?word?.mean?.split('|=').expand((meaningGroup) {
                    final parts = meaningGroup.split('|&');
                    return [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, top: 8.0),
                        child: Text(
                          ' * ${parts[0].trim()}',
                          style: TextStyle(fontSize: 18, color: theme.tertiary),
                        ),
                      ),
                      ...parts.skip(1).expand((meaning) =>
                          meaning.split('|-').map((subMeaning) => Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 16.0),
                                child: Text(
                                  subMeaning.trim(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ))),
                    ];
                  }),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
