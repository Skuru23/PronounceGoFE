import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/group_detail/group_detail.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class GroupCard extends StatelessWidget {
  final GetGroupItem group;

  GroupCard({required this.group});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: theme.onSecondary,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.redd.it/14gnqv8rtl9b1.jpg"), // Assuming group has an imageUrl property
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group.name ?? 'Unknown Group',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Giáo chủ ${group.creator ?? 'Unknown Owner'}',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Responsive(
                      mobile: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Giáo đồ: ${group.totalMember}'),
                          SizedBox(height: 10),
                          Text('Khóa học: ${group.totalLesson}'),
                          SizedBox(height: 10),
                          Text('Lượt thích: ${group.totalLike}'),
                        ],
                      ),
                      desktop: Row(
                        children: [
                          Text('Giáo đồ: ${group.totalMember}'),
                          SizedBox(width: 10),
                          Text('Khóa học: ${group.totalLesson}'),
                          SizedBox(width: 10),
                          Text('Lượt thích: ${group.totalLike}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme
                        .primaryContainer, // Change the color of the join button
                    minimumSize:
                        Size(120, 36), // Set the width and height of the button
                  ),
                  onPressed: () {},
                  child: Text('Join'),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme
                        .secondaryContainer, // Change the color of the see group button
                    minimumSize:
                        Size(120, 36), // Set the width and height of the button
                  ),
                  onPressed: () {
                    Get.to(GroupDetail(group: group));
                  },
                  child: Text('See Group'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
