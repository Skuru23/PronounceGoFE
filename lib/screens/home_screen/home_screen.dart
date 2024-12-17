import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_screen/course_screen.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:pronounce_go/screens/home_screen/home_content.dart';
import 'package:pronounce_go/screens/profile_screen/profile_screen.dart';
import 'package:pronounce_go/screens/progress_screen/progress_screen.dart';
import 'package:pronounce_go/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Row(
        children: [
          if (!Responsive.isMobile(context))
            Obx(
              () => NavigationRail(
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                backgroundColor: theme.secondaryContainer,
                indicatorColor: theme.surface,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text("Trang chủ"),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  NavigationRailDestination(
                      icon: Icon(Icons.book),
                      label: Text("Bài học"),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                  NavigationRailDestination(
                      icon: Icon(Icons.group),
                      label: Text("Nhóm"),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                  NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text("Đang học"),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                  NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      label: Text("Cá nhân"),
                      padding: EdgeInsets.symmetric(vertical: 20))
                ],
              ),
            ),
          Expanded(
            child:
                Obx(() => controller.screens[controller.selectedIndex.value]),
          ),
        ],
      ),
      bottomNavigationBar: Responsive.isMobile(context)
          ? Obx(
              () => NavigationBar(
                height: 80,
                elevation: 0,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                backgroundColor: theme.secondaryContainer,
                indicatorColor: theme.surface,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home), label: "Trang chủ"),
                  NavigationDestination(
                      icon: Icon(Icons.book), label: "Bài học"),
                  NavigationDestination(icon: Icon(Icons.group), label: "Nhóm"),
                  NavigationDestination(
                      icon: Icon(Icons.person), label: "Đang học"),
                  NavigationDestination(
                      icon: Icon(Icons.settings), label: "Cá nhân")
                ],
              ),
            )
          : null,
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeContent(),
    const CourseScreen(),
    const GroupScreen(),
    const ProgressScreen(),
    const ProfileScreen(),
  ];
}
