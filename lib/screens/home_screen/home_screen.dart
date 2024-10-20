import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

import '../../api/base_api.dart';

class HomeScreen extends StatefulWidget {
  final dynamic response;

  const HomeScreen({Key? key, required this.response}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String word = '';

  void _changeWord(String newWord) {
    setState(() {
      word = newWord;
    });
  }

  void getWord() async {
    try {
      final PronounceGoApi api = BaseApi.getApi();
      WordsApi wordsApi = api.getWordsApi();
      Response<WordDetailResponse> response =
          await wordsApi.getWordDetailApiV1WordsWordIdGet(wordId: 200);
      _changeWord(response.data?.word ?? "");
    } on DioException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Response')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Text(widget.response
                  .toString()), // Hiển thị toàn bộ response dưới dạng chuỗi
            ),
            Text(word),
            OutlinedButton(onPressed: getWord, child: Text("Get Word data"))
          ],
        ),
      ),
    );
  }
}
