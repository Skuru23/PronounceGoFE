import 'package:flutter/material.dart';
import 'package:pronounce_go/screens/group_screen/group_card.dart';

class Group {
  final String name;
  final String owner;
  final int totalMembers;
  final int totalCourses;
  final int totalLikes;
  final String groupImageUrl;

  Group({
    required this.name,
    required this.owner,
    required this.totalMembers,
    required this.totalCourses,
    required this.totalLikes,
    required this.groupImageUrl,
  });
}

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  final List<Group> groups = [
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
    // Add more groups here
     Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
   

    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
    Group(
        name: 'Cooking phái',
        owner: 'Ding Long ga',
        totalMembers: 10,
        totalCourses: 5,
        totalLikes: 100,
        groupImageUrl: 'https://i.redd.it/14gnqv8rtl9b1.jpg'),

    Group(
        name: 'Quỷ theo sau',
        owner: 'Copilot vjp',
        totalMembers: 20,
        totalCourses: 10,
        totalLikes: 200,
        groupImageUrl: "https://upload-os-bbs.hoyolab.com/upload/2024/03/06/179113813/66f2bdd031cf11d55388e7f55def0ab3_4956091352367483524.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70"),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Giáo phái'),
      ),
      body: Column(
        children: [
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
          Expanded(
            child: ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final group = groups[index];
                if (group.name
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase())) {
                  return GroupCard(group: group);
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
