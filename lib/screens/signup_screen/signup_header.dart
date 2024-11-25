import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

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
          "Đăng ký",
          style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          "Tạo tài khoản để tham gia thử thách phát âm",
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
