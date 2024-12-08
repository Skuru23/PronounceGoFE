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
          "Chào bạn",
          style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          "Hãy đăng nhập và trải nghiệm app học phát âm nào",
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
