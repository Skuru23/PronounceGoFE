import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage("assets/images/app_icon.png"),
          height: size.height * 0.3,
        ),
        Text(
          "Welcome",
          style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          "Login to chanlenge the champion of pronunciation",
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
