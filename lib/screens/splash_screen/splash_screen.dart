import 'package:flutter/material.dart';
import 'package:test_login/constants/size.dart';
import 'package:test_login/constants/text_strings.dart';
import 'package:test_login/responsive/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animated = false;

  @override
  void initState() {
    // TODO: implement initState
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              AnimatedPositioned(
                  duration: const Duration(microseconds: 1600),
                  top: animated ? 0 : -30,
                  left: animated ? 0 : -30,
                  child: const Image(
                    image: AssetImage("assets/images/splash_icon.png"),
                    height: 200,
                    width: 200,
                  )),
              Positioned(
                  top: 100,
                  left: 60,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appName,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(appTagLine,
                            style: TextStyle(fontSize: 24, color: Colors.black),
                            softWrap: true),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 100,
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).width,
                    width: MediaQuery.sizeOf(context).width,
                    child: const Image(
                      image: AssetImage("assets/images/splash_image.png"),
                    ),
                  )),
              Positioned(
                  bottom: 40,
                  right: 30,
                  child: Container(
                      width: splashContainerSize,
                      height: splashContainerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).colorScheme.primary,
                      )))
            ],
          ),
        ));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animated = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    // Navigatior.
  }
}
