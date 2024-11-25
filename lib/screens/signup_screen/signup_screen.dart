import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/login_screen/login_screen.dart';
import 'package:pronounce_go/screens/signup_screen/signup_header.dart';
import 'signup_form.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: Responsive.isDesktop(context)
                  ? size.width * 0.25
                  : size.width,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignupHeader(),
                  SignUpForm(),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => LoginScreen());
                        },
                        child: Text.rich(TextSpan(
                            text: "Đã có tài khoản rồi ?",
                            style: textTheme.bodySmall,
                            children: const [
                              TextSpan(
                                  text: " Đăng nhập",
                                  style: TextStyle(color: Colors.blue))
                            ]))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
