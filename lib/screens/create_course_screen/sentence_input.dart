import 'package:flutter/material.dart';

class SentencesInput extends StatefulWidget {
  final ValueChanged<List<String>> onChanged;

  const SentencesInput({super.key, required this.onChanged});

  @override
  SentencesInputState createState() => SentencesInputState();
}

class SentencesInputState extends State<SentencesInput> {
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
    final theme = Theme.of(context).colorScheme;
    return Column(
      children: [
        ..._controllers.asMap().entries.map((entry) {
          int index = entry.key;
          TextEditingController controller = entry.value;
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                        labelText: 'Sentence ${index + 1}',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    onChanged: (value) => _notifyParent(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle),
                  onPressed: () => _removeSentenceField(index),
                ),
              ],
            ),
          );
        }).toList(),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.primary,
            foregroundColor: theme.onPrimary,
          ),
          onPressed: _addSentenceField,
          child: Text(
            'Thêm câu',
          ),
        ),
      ],
    );
  }
}
