import 'package:flutter/material.dart';
import 'package:test_login/responsive/responsive.dart';
import 'package:test_login/screens/login_screen/login_form.dart';
import 'package:test_login/screens/login_screen/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width:
                Responsive.isDesktop(context) ? size.width * 0.25 : size.width,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginHeader(),
                const LoginForm(),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: Text.rich(TextSpan(
                          text: "Don't have an account ?",
                          style: textTheme.bodySmall,
                          children: const [
                            TextSpan(
                                text: " Sign up",
                                style: TextStyle(color: Colors.blue))
                          ]))),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
