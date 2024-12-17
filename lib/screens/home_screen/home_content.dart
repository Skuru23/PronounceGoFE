import 'package:flutter/material.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/home_screen/home_group_slider.dart';
import 'package:pronounce_go/screens/home_screen/home_header.dart';
import 'package:pronounce_go/screens/home_screen/home_lesson_slider.dart';
import 'package:pronounce_go/screens/home_screen/home_recommend_activities.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width:
                Responsive.isDesktop(context) ? size.width * 0.8 : size.width,
            child: const Column(
              children: [
                HomeHeader(),
                SizedBox(
                  height: 16,
                ),
                HomeLessonSlider(),
                SizedBox(
                  height: 16,
                ),
                HomeGroupSlider(),
                SizedBox(
                  height: 16,
                ),
                HomeRecommendActivities(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
