import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/constants/text_strings.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isDesktop = Responsive.isDesktop(context);
    final TextTheme textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          Image(
            image: const AssetImage('assets/images/icon.png'),
            width: isDesktop ? size.height * 0.4 : size.height * 0.2,
            height: isDesktop ? size.height * 0.4 : size.height * 0.2,
          ),
          Text(
            appTagLine,
            style: isDesktop ? textTheme.bodyLarge : textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
              onPressed: () {
                Get.to(() => const TrainingScreen());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  foregroundColor: Theme.of(context).colorScheme.onTertiary,
                  padding: EdgeInsets.all(isDesktop ? 16.0 : 8.0)),
              icon: Icon(Icons.speaker_sharp, size: isDesktop ? 32 : 24),
              label: Text(
                'Kiểm tra phát âm ngay',
                style: isDesktop
                    ? textTheme.titleMedium?.copyWith(color: theme.onPrimary)
                    : textTheme.titleSmall?.copyWith(color: theme.onPrimary),
              ))
        ],
      ),
    );
  }
}
