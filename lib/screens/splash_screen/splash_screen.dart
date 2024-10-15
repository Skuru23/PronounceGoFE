import 'package:flutter/material.dart';
import 'package:test_login/constants/size.dart';
import 'package:test_login/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage("assets/images/splash_icon.png"),
                height: 200,
                width: 200,
              )),
          Positioned(
              top: 80,
              left: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    appTagLine,
                    style: Theme.of(context).textTheme.headlineSmall,
                    softWrap: true,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
