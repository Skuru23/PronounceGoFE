import 'package:flutter/material.dart';

class UserDetailCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const UserDetailCard(
      {super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: color ?? theme.onSecondary,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
