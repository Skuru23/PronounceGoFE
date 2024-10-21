import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image(
            image: AssetImage("assets/images/app_icon.png"),
            height: 120,
            width: 120,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Huy Truong",
          style: theme.textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_pin),
            Text(
              "Hanoi",
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    ));
  }
}
