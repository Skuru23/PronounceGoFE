import 'package:built_collection/built_collection.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/group_detail/group_detail.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class HomeGroupSlider extends StatefulWidget {
  const HomeGroupSlider({super.key});

  @override
  State<HomeGroupSlider> createState() => _HomeGroupSliderState();
}

class _HomeGroupSliderState extends State<HomeGroupSlider> {
  GroupRepository groupRepository = GroupRepository();
  List<GroupBase>? groups;

  Future<void> fetchGroups() async {
    try {
      final response = await groupRepository.listingTopGroup();
      setState(() {
        groups = response.data?.data?.toList() ?? [];
      });
    } catch (e) {
      if (e is DioException) {
        dioExceptionHandle(e);
      } else {
        showToast("Error: $e", 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchGroups();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child: groups != null
              ? _buildCarouselSlider(groups!.build(), 'Nhóm nổi bật')
              : const CircularProgressIndicator(),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            Get.to(() => GroupScreen());
          },
          label: Text('Khám phá các hội nhóm'),
          icon: Icon(Icons.group),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(size.width * 0.5, 36),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }

  Widget _buildCarouselSlider(BuiltList<GroupBase> groups, String title) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    final bool isDesktop = Responsive.isDesktop(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: isDesktop ? BorderRadius.circular(8.0) : null,
        color: theme.primaryContainer,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: textTheme.headlineMedium,
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 140,
              enlargeCenterPage: true,
              autoPlay: true,
              viewportFraction: 0.5,
            ),
            items: groups.map((group) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => GroupDetail(groupId: group.id ?? 0));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: theme.primary, width: 2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.network(
                                group.imagePath != null
                                    ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${group.imagePath!}"
                                    : '${dotenv.env["API_BASE_URL"]}api/v1/images/course_icon.jpg',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                group.name ?? '',
                                style: textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
