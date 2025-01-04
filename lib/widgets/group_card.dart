import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/group_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/group_detail/group_detail.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupCard extends StatefulWidget {
  final GetGroupItem group;
  final VoidCallback refetch;
  const GroupCard({super.key, required this.group, required this.refetch});

  @override
  State<GroupCard> createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard> {
  GroupRepository groupRepository = GroupRepository();

  void joinGroup() async {
    try {
      final response = await groupRepository.joinGroup(widget.group.id ?? 0);
      if (response.statusCode == 204) {
        showToast('Đã gửi request, hãy chờ xác nhận', 'success');
      }
    } catch (e) {
      if (e is DioException) {
        showToast(e.response?.data['message'], 'error');
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isTablet = Responsive.isTablet(context);
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Card(
      color: theme.onSecondary,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: isDesktop ? 100 : 60,
              height: isDesktop ? 100 : 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(widget.group.imagePath != null
                      ? ("${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${widget.group.imagePath!}")
                      : "https://i.redd.it/14gnqv8rtl9b1.jpg"), // Assuming group has an imageUrl property
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.group.name ?? 'Unknown Group',
                    style: textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chủ nhóm ${widget.group.creator}',
                            style: textTheme.bodySmall,
                          ),
                          const SizedBox(height: 8.0),
                          Responsive(
                            mobile: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Thành viên: ${widget.group.totalMember}'),
                                const SizedBox(height: 10),
                                Text('Khóa học: ${widget.group.totalLesson}'),
                                const SizedBox(height: 10),
                                Text('Lượt thích: ${widget.group.totalLike}'),
                              ],
                            ),
                            desktop: Row(
                              children: [
                                Text('Thành viên: ${widget.group.totalMember}'),
                                const SizedBox(width: 10),
                                Text('Khóa học: ${widget.group.totalLesson}'),
                                const SizedBox(width: 10),
                                Text('Lượt thích: ${widget.group.totalLike}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          if (widget.group.isMember != null)
                            if (widget.group.isMember == false)
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: theme.primaryContainer,
                                  minimumSize: const Size(120, 36),
                                ),
                                onPressed: joinGroup,
                                child: const Text('Tham gia'),
                              ),
                          const SizedBox(height: 8.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.secondaryContainer,
                              minimumSize: const Size(120, 36),
                            ),
                            onPressed: () {
                              Get.to(
                                  GroupDetail(groupId: widget.group.id ?? 0));
                            },
                            child: const Text('Chi tiết'),
                          ),
                        ],
                      ),
                    ],
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
