import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/constants/size.dart';
import 'package:pronounce_go/constants/text_strings.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animated = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: GestureDetector(
          onTap: () {
            Get.to(() => const HomeScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    top: animated ? 0 : -100,
                    left: animated ? 0 : -100,
                    child: const Image(
                      image: AssetImage("assets/images/splash_icon.png"),
                      height: 200,
                      width: 200,
                    )),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    top: 100,
                    left: animated ? 60 : -80,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 1600),
                        opacity: animated ? 1 : 0,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              appName,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(appTagLine,
                                style: TextStyle(fontSize: 24), softWrap: true),
                          ],
                        ),
                      ),
                    )),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    bottom: animated ? 100 : 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).width,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 1600),
                        opacity: animated ? 1 : 0,
                        child: Center(
                          child: Image(
                            image:
                                const AssetImage("assets/images/app_icon.png"),
                            width: Responsive.isDesktop(context)
                                ? MediaQuery.sizeOf(context).height * 0.7
                                : MediaQuery.sizeOf(context).height,
                            height: Responsive.isDesktop(context)
                                ? MediaQuery.sizeOf(context).height * 0.7
                                : MediaQuery.sizeOf(context).height,
                          ),
                        ),
                      ),
                    )),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    bottom: animated ? 40 : 0,
                    right: 30,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 1600),
                      opacity: animated ? 1 : 0,
                      child: Container(
                          width: splashContainerSize,
                          height: splashContainerSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context).colorScheme.primary,
                          )),
                    ))
              ],
            ),
          ),
        ));
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1600));
    setState(() {
      animated = true;
    });
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(() => const HomeScreen());
  }
}
