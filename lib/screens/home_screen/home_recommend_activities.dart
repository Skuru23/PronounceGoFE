import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/course_screen/course_screen.dart';
import 'package:pronounce_go/screens/create_course_screen/create_course_screen.dart';
import 'package:pronounce_go/screens/my_group_screen/my_group_screen.dart';
import 'package:pronounce_go/screens/progress_screen/progress_screen.dart';

class HomeRecommendActivities extends StatelessWidget {
  const HomeRecommendActivities({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Chúng ta làm gì hôm nay?', style: textTheme.headlineSmall),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionCard(
                  size,
                  theme,
                  textTheme,
                  'Tiếp tục các bài học',
                  Icons.directions_run,
                  LinearGradient(colors: [Colors.purple, Colors.red]),
                  Colors.purple, onTap: () {
                Get.to(() => const ProgressScreen());
              }),
              _buildActionCard(
                  size,
                  theme,
                  textTheme,
                  'Check hội xem có gì mới',
                  Icons.local_cafe,
                  LinearGradient(colors: [Colors.red, Colors.teal]),
                  Colors.red, onTap: () {
                Get.to(() => const MyGroupScreen());
              }),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionCard(
                  size,
                  theme,
                  textTheme,
                  'Tìm 1 bài học mới',
                  Icons.book,
                  LinearGradient(colors: [Colors.teal, Colors.blue]),
                  Colors.teal, onTap: () {
                Get.to(() => const CourseScreen());
              }),
              _buildActionCard(
                  size,
                  theme,
                  textTheme,
                  'Tạo một bài học mới để luyện tập',
                  Icons.sports_gymnastics,
                  LinearGradient(colors: [Colors.blue, Colors.purple]),
                  Colors.blue, onTap: () {
                Get.to(() => const CreateCourseScreen());
              }),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildActionCard(Size size, ColorScheme theme, TextTheme textTheme,
      String title, IconData icon, Gradient gradient, Color shadowColor,
      {Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * 0.45,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.5),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(height: 8),
            Text(title,
                style: textTheme.bodyMedium?.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
