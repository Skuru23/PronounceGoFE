import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ClipOval(
          child: Image(
            image: AssetImage("assets/images/app_icon.png"),
            height: 120,
            width: 120,
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Huy Truong",
          style: theme.textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_pin),
            Text(
              "Hanoi",
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Get.to(() => const TrainingScreen());
            },
            child: const Text('Training')),
      ],
    ));
  }
}
