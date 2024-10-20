import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage("assets/images/app_icon.png"),
              height: MediaQuery.sizeOf(context).height * 0.6,
            ),
            Column(
              children: [
                Text(
                  "Chao iem",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text("Welcome to silver wolf game",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: Text("Login"),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Signup"),
                  style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
