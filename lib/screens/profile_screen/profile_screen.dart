import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/profile_screen/my_info.dart';
import 'package:pronounce_go/screens/profile_screen/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Stack(children: [
                    Image(
                      image: AssetImage("assets/images/app_icon.png"),
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      color: colorTheme.primary.withOpacity(0.85),
                    )
                  ]),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: MyInfo(),
                    ),
                  )
                ],
              ),
              flex: 4,
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: colorTheme.surface,
                child: Table(
                  children: [
                    TableRow(children: [
                      ProfileCard(
                        firstText: "Item1",
                        secondText: "subtitle",
                        icon: Icon(
                          Icons.settings,
                          color: colorTheme.tertiary,
                        ),
                      ),
                      ProfileCard(
                        firstText: "Item2",
                        secondText: "subtitle",
                        icon: Icon(
                          Icons.settings,
                          color: colorTheme.tertiary,
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
