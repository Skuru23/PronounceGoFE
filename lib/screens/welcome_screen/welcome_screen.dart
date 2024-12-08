import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/constants/text_strings.dart';
import 'package:pronounce_go/screens/login_screen/login_screen.dart';
import 'package:pronounce_go/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage("assets/images/app_icon.png"),
              height: MediaQuery.sizeOf(context).height * 0.6,
            ),
            Column(
              children: [
                Text(
                  appName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(appTagLine, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary),
                      padding: const EdgeInsets.symmetric(vertical: 20)),
                  child: const Text("Đăng nhập"),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary),
                      padding: const EdgeInsets.symmetric(vertical: 20)),
                  child: const Text("Đăng ký"),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
