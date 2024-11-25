import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pronounce_go/api/word_repository.dart';

class WordItem {
  final int id;
  final String word;

  WordItem(this.id, this.word);
}

class WordsIAutocompleteInput extends StatefulWidget {
  @override
  _WordsIAutocompleteInputState createState() =>
      _WordsIAutocompleteInputState();
}

class _WordsIAutocompleteInputState extends State<WordsIAutocompleteInput> {
  final List<String> _allItems = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
  ]; // Danh sách các item có thể chọn

  final List<WordItem> _selectedItems = []; // Danh sách các item đã chọn
  Timer? _debounce;
  final WordRepository _wordRepository = WordRepository();
  List<WordItem> _wordList = [];

  @override
  void initState() {
    super.initState();
    _fetchWords();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _fetchWords(query);
    });
  }

  Future<List<WordItem>> _fetchWords([String? keyword]) async {
    try {
      final response = await _wordRepository.listWords(keyword: keyword);
      final wordMap = response.data?.data
              .map<WordItem>((word) => WordItem(word.id, word.word))
              .toList() ??
          [];
      setState(() {
        _wordList = wordMap;
      });
      return wordMap;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Autocomplete<WordItem>(
            displayStringForOption: (option) => option.word,
            optionsBuilder: (TextEditingValue textEditingValue) async {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<WordItem>.empty();
              }
              if (_debounce?.isActive ?? false) _debounce?.cancel();
              Completer<List<WordItem>> completer = Completer();
              _debounce = Timer(const Duration(milliseconds: 500), () async {
                List<WordItem> result =
                    await _fetchWords(textEditingValue.text.toLowerCase());
                completer.complete(result);
              });
              await completer.future;
              return completer.future;
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Material(
                elevation: 4.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final item = options.elementAt(index);
                    return ListTile(
                      title: Text(item.word),
                      onTap: () {
                        onSelected(item);
                      },
                    );
                  },
                ),
              );
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return TextField(
                controller: textEditingController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  labelText: 'Search items',
                  border: OutlineInputBorder(),
                ),
              );
            },
            onSelected: (WordItem selectedItem) {
              if (!_selectedItems.contains(selectedItem)) {
                setState(() {
                  _selectedItems.add(selectedItem);
                });
              }
            },
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: _selectedItems.map((item) {
              return Chip(
                label: Text(item.word),
                deleteIcon: Icon(Icons.close),
                onDeleted: () {
                  setState(() {
                    _selectedItems.remove(item);
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
