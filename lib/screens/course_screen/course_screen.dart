import 'package:flutter/material.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/screens/my_course_screen/my_course_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go/widgets/course_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CourseScreen extends ConsumerStatefulWidget {
  const CourseScreen({super.key});

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends ConsumerState<CourseScreen> {
  List<ListLessonsItem> courses = [];
  List<ListLessonsItem> filteredCourses = [];
  String searchQuery = '';
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchLessons();
  }

  Future<void> fetchLessons() async {
    setState(() {
      isLoading = true;
    });
    try {
      final lessonRepository = ref.read(lessonRepositoryProvider);
      final response = await lessonRepository.getLesson();
      setState(() {
        courses = List<ListLessonsItem>.from(response.data.data ?? []);
      });
      updateSearchQuery(searchQuery);
    } catch (e) {
      showToast("Error fetching lessons: $e", 'error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredCourses = courses
          .where((course) =>
              course.name?.toLowerCase().contains(query.toLowerCase()) ?? false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm bài học',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: updateSearchQuery,
            ),
          ),
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      fetchLessons();
                    },
                    child: ListView(
                      children: filteredCourses.map((course) {
                        return CourseCard(
                          course: course,
                          refetch: fetchLessons,
                        );
                      }).toList(),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyCourseScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primary,
                foregroundColor: theme.onPrimary,
              ),
              icon: const Icon(Icons.book, size: 24.0),
              label: const SizedBox(
                width: double.infinity,
                child: Text(
                  'Bài học của tôi',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
