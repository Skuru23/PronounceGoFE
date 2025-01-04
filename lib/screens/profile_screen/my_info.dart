import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class MyInfo extends StatelessWidget {
  final UserResponse? user;
  const MyInfo({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image(
            image: NetworkImage(user?.imagePath != null
                ? ("${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/${user?.imagePath!}")
                : "${dotenv.env["API_BASE_URL"] ?? 'http://localhost:8000'}api/v1/images/user_icon.jpg"),
            height: 120,
            width: 120,
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  user?.name ?? "",
                  style: theme.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_pin),
                    Text(
                      user?.address ?? "",
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
