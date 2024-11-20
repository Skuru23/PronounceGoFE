import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';

class GroupCard extends StatelessWidget {
  final Group group;

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
                      image: NetworkImage(group
                          .groupImageUrl), // Assuming group has an imageUrl property
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Giáo chủ ${group.owner}',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Text('Giáo đồ: ${group.totalMembers}'),
                        SizedBox(width: 10),
                        Text('Khóa học: ${group.totalCourses}'),
                        SizedBox(width: 10),
                        Text('Lượt thích: ${group.totalLikes}'),
                      ],
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
                  onPressed: () {
                    // Handle join button press
                  },
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
                  onPressed: () {},
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
