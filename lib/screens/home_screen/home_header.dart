import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/constants/text_strings.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image(
            image: const AssetImage('assets/images/icon.png'),
            width: Responsive.isDesktop(context)
                ? MediaQuery.sizeOf(context).height * 0.4
                : MediaQuery.sizeOf(context).height * 0.2,
            height: Responsive.isDesktop(context)
                ? MediaQuery.sizeOf(context).height * 0.4
                : MediaQuery.sizeOf(context).height * 0.2,
          ),
          Text(
            appTagLine,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
              onPressed: () {
                Get.to(() => const TrainingScreen());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  foregroundColor: Theme.of(context).colorScheme.onTertiary),
              icon: const Icon(Icons.speaker_sharp),
              label: const Text('Kiểm tra phát âm ngay'))
        ],
      ),
    );
  }
}
