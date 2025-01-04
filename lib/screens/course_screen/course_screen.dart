import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/api/lesson_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
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
      if (e is DioException) {
        dioExceptionHandle(e);
      } else {
        showToast('Error: $e', 'error');
      }
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
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách bài học'),
      ),
      body: Center(
        child: SizedBox(
          width: Responsive.isDesktop(context) ? size.width * 0.6 : size.width,
          child: Column(
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
                    padding: EdgeInsets.all(
                        Responsive.isMobile(context) ? 8.0 : 16.0),
                  ),
                  icon: Icon(Icons.book,
                      size: Responsive.isMobile(context) ? 24.0 : 40.0),
                  label: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Bài học của tôi',
                      textAlign: TextAlign.center,
                      style: Responsive.isMobile(context)
                          ? textTheme.titleMedium
                              ?.copyWith(color: theme.onPrimary)
                          : textTheme.headlineMedium
                              ?.copyWith(color: theme.onPrimary),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
