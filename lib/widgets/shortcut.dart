import 'package:application/styles/web_colors.dart';
import 'package:flutter/material.dart';

class ShortCut extends StatelessWidget {
  final bool switchValue;
  final Widget? child;

  const ShortCut({super.key, required this.switchValue, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: CircleAvatar(
          backgroundColor: switchValue
              ? DarkColor.kSearchColor
              : LightColor.kSearchColor,
          child: child,
        ),
      ),
    );
  }
}
