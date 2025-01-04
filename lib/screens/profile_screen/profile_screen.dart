import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/api/user_repository.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/my_course_screen/my_course_screen.dart';
import 'package:pronounce_go/screens/my_group_screen/my_group_screen.dart';
import 'package:pronounce_go/screens/profile_screen/my_info.dart';
import 'package:pronounce_go/screens/profile_screen/profile_card.dart';
import 'package:pronounce_go/screens/progress_screen/progress_screen.dart';
import 'package:pronounce_go/screens/welcome_screen/welcome_screen.dart';
import 'package:pronounce_go/util.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AuthRepository authRepository = AuthRepository();
  UserRepository userRepository = UserRepository();
  UserResponse? user;
  Future<void> fetchDetail() async {
    try {
      final response = await userRepository.getUserDetail();
      setState(() {
        user = response.data;
      });
    } catch (e) {
      if (e is DioException) {
        dioExceptionHandle(e);
      } else {
        showToast('Error: $e', 'error');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDetail();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Stack(children: [
                    Image(
                      image: NetworkImage(user?.imagePath != null
                          ? ("${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${user?.imagePath!}")
                          : "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/images/user_icon.jpg"),
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      color: colorTheme.primary.withOpacity(0.85),
                    ),
                    Center(
                      child: MyInfo(user: user),
                    )
                  ]),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: Responsive.isDesktop(context)
                      ? size.width * 0.6
                      : size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: colorTheme.surface,
                        child: Table(
                          children: [
                            TableRow(
                              children: [
                                ProfileCard(
                                  label: 'Tổng số tiến trình',
                                  number: user?.totalProgress ?? 0,
                                  onClick: () {
                                    Get.to(() => const ProgressScreen());
                                  },
                                  icon: Icon(
                                    Icons.featured_play_list,
                                    color: colorTheme.tertiary,
                                  ),
                                ),
                                ProfileCard(
                                  label: 'Số tiến trình đã hoàn thành',
                                  number: user?.doneProgress ?? 0,
                                  onClick: () {
                                    Get.to(() => const ProgressScreen());
                                  },
                                  icon: Icon(
                                    Icons.playlist_add_check,
                                    color: colorTheme.tertiary,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(children: [
                              ProfileCard(
                                label: 'Tổng số tiến trình chưa hoàn thành',
                                number: user?.remainProgress ?? 0,
                                onClick: () {
                                  Get.to(() => const ProgressScreen());
                                },
                                icon: Icon(
                                  Icons.playlist_play,
                                  color: colorTheme.tertiary,
                                ),
                              ),
                              ProfileCard(
                                label: 'Tổng số bài học',
                                number: user?.totalLesson ?? 0,
                                onClick: () {
                                  Get.to(() => const MyCourseScreen());
                                },
                                icon: Icon(
                                  Icons.book,
                                  color: colorTheme.tertiary,
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              ProfileCard(
                                label: 'Số group tham gia',
                                number: user?.joinedGroup ?? 0,
                                onClick: () {
                                  Get.to(() => const MyGroupScreen());
                                },
                                icon: Icon(
                                  Icons.group,
                                  color: colorTheme.tertiary,
                                ),
                              ),
                              ProfileCard(
                                label: 'Chỉnh sửa thông tin',
                                onClick: () {
                                  // Get.to(() => const ProgressScreen());
                                },
                                icon: Icon(
                                  Icons.settings,
                                  color: colorTheme.tertiary,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              authRepository.logout();
                              Get.to(() => const WelcomeScreen());
                            },
                            style: ButtonStyle(
                              minimumSize: WidgetStateProperty.all(
                                  Size(double.infinity, 36)),
                              backgroundColor:
                                  WidgetStateProperty.all(colorTheme.primary),
                              foregroundColor:
                                  WidgetStateProperty.all(colorTheme.onPrimary),
                            ),
                            child: Text("Đăng xuất")),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
