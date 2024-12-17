import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  final String label;
  final int? number;
  final Widget icon;
  final VoidCallback onClick;

  const ProfileCard(
      {super.key,
      required this.label,
      this.number,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        height: 120,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 10),
          elevation: 5,
          color: theme.colorScheme.secondaryContainer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        number != null ? number.toString() : '',
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        label,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                icon, // Add the icon here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
