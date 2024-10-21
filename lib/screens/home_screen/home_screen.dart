import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/profile_screen/profile_screen.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

import '../../api/base_api.dart';

// class HomeScreen extends StatefulWidget {
//   final dynamic response;

//   const HomeScreen({Key? key, required this.response}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String word = '';

//   void _changeWord(String newWord) {
//     setState(() {
//       word = newWord;
//     });
//   }

//   void getWord() async {
//     try {
//       final PronounceGoApi api = BaseApi.getApi();
//       WordsApi wordsApi = api.getWordsApi();
//       Response<WordDetailResponse> response =
//           await wordsApi.getWordDetailApiV1WordsWordIdGet(wordId: 200);
//       _changeWord(response.data?.word ?? "");
//     } on DioException catch (e) {
//       print(e.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login Response')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SingleChildScrollView(
//               child: Text(widget.response
//                   .toString()), // Hiển thị toàn bộ response dưới dạng chuỗi
//             ),
//             Text(word),
//             OutlinedButton(onPressed: getWord, child: Text("Get Word data"))
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: theme.secondaryContainer,
          indicatorColor: theme.surface,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.book), label: "Training"),
            NavigationDestination(icon: Icon(Icons.group), label: "Group"),
            NavigationDestination(
                icon: Icon(Icons.person), label: "My progress"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.green),
    const TrainingScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
    const ProfileScreen(),
  ];
}
