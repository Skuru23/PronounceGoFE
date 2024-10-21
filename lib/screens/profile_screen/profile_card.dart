import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;

  const ProfileCard(
      {required this.firstText, required this.secondText, required this.icon});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      elevation: 5,
      color: theme.colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Text(
              firstText,
              style: theme.textTheme.titleMedium,
            ),
            Text(
              firstText,
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
