import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/progress_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/progress_screen/progress_card.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  List<ListingProgressItem> progresses = [];
  final ProgressRepository _progressRepository = ProgressRepository();

  @override
  void initState() {
    super.initState();
    fetchProgresses();
  }

  Future<void> fetchProgresses() async {
    try {
      final response = await _progressRepository.getProgresses();
      setState(() {
        progresses = List<ListingProgressItem>.from(
            (response.data?.data ?? []) as Iterable<dynamic>);
      });
    } catch (e) {
      Get.snackbar('Error fetching progresses', e.toString());
    }
  }

  String searchQuery = ''; // Moved searchQuery here

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiến trình'),
      ),
      body: Center(
        child: SizedBox(
          width: isDesktop ? size.width * 0.6 : size.width,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: theme.onSecondary,
                  filled: true,
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: RefreshIndicator(
                onRefresh: fetchProgresses,
                child: ListView.builder(
                  itemCount: progresses
                      .where((lesson) => lesson.lessonName!
                          .toLowerCase()
                          .contains(searchQuery.toLowerCase()))
                      .length,
                  itemBuilder: (context, index) {
                    final filteredList = progresses
                        .where((lesson) => lesson.lessonName!
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase()))
                        .toList();
                    final lesson = filteredList[index];
                    return ProgressCard(
                      lesson: lesson,
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
