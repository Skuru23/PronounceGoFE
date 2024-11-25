import 'package:flutter/material.dart';

class SentencesInput extends StatefulWidget {
  final ValueChanged<List<String>> onChanged;

  SentencesInput({required this.onChanged});

  @override
  _SentencesInputState createState() => _SentencesInputState();
}

class _SentencesInputState extends State<SentencesInput> {
  final List<TextEditingController> _controllers = [];

  void _addSentenceField() {
    setState(() {
      _controllers.add(TextEditingController());
    });
  }

  void _removeSentenceField(int index) {
    setState(() {
      _controllers.removeAt(index);
    });
    _notifyParent();
  }

  void _notifyParent() {
    widget
        .onChanged(_controllers.map((controller) => controller.text).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._controllers.asMap().entries.map((entry) {
          int index = entry.key;
          TextEditingController controller = entry.value;
          return Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  decoration:
                      InputDecoration(labelText: 'Sentence ${index + 1}'),
                  onChanged: (value) => _notifyParent(),
                ),
              ),
              IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () => _removeSentenceField(index),
              ),
            ],
          );
        }).toList(),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _addSentenceField,
          child: Text('Add Sentence'),
        ),
      ],
    );
  }
}
