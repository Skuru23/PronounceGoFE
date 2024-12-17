import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class CourseDetailHeader extends StatelessWidget {
  final GetLessonDetailResponse lessonDetail;
  const CourseDetailHeader({super.key, required this.lessonDetail});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.secondaryContainer,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: theme.primary, width: 2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.network(
                lessonDetail.imagePath != null
                    ? "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${lessonDetail.imagePath!}"
                    : '${dotenv.env["API_BASE_URL"]}api/v1/images/course_icon.jpg',
                width: Responsive.isDesktop(context) ? 150 : 70,
                height: Responsive.isDesktop(context) ? 150 : 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width * 0.33
                  : size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lessonDetail.name ?? 'Unknown',
                    style: Responsive.isDesktop(context)
                        ? textTheme.headlineMedium
                        : textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16.0),
                  if (lessonDetail.userOwnerId != null)
                    Text(
                      'Người tạo: ${lessonDetail.creatorName ?? 'Unknown'}',
                    ),
                  if (lessonDetail.groupOwnerId != null)
                    Text(
                      'Nhóm: ${lessonDetail.groupOwnerName ?? 'Unknown'}',
                    ),
                  Text(
                    lessonDetail.description ?? 'No description',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
