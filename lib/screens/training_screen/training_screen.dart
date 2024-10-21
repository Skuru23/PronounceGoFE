import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/responsive/responsive.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

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
            TextField(decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              label:Text("Word or senetence"),
              hintText: "Enter the word or sentence you want to check",
              border: OutlineInputBorder(),
            ),),
            SizedBox(height: 20,),
            Center(
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.mic), style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(theme.primaryContainer),
                padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
              ),),
            )
          ],),
        ),
      ),
    );
  }
}
