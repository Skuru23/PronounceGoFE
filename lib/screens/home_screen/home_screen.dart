import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_screen/course_screen.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:pronounce_go/screens/home_screen/user_detail.dart';
import 'package:pronounce_go/screens/profile_screen/profile_screen.dart';
import 'package:pronounce_go/screens/progress_screen/progress_screen.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: theme.secondaryContainer,
          indicatorColor: theme.surface,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Trang chủ"),
            NavigationDestination(icon: Icon(Icons.book), label: "Bài học"),
            NavigationDestination(icon: Icon(Icons.group), label: "Nhóm"),
            NavigationDestination(icon: Icon(Icons.person), label: "Đang học"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Cá nhân")
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    TrainingScreen(),
    CourseScreen(),
    GroupScreen(),
    ProgressScreen(),
    const ProfileScreen(),
  ];
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserDetail(),
      ],
    );
  }
}
