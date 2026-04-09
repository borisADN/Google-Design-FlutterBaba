import 'package:application/styles/web_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SettingPart extends StatefulWidget {
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerEnterEvent)? onExit;
  final String text;
  final bool mouseRegion;
  final bool switchValue;

  const SettingPart({
    super.key,
    required this.onEnter,
    required this.mouseRegion,
    required this.onExit,
    required this.switchValue,
    required this.text,
  });

  @override
  SettingPartState createState() => SettingPartState();
}


//MouseRegion en Flutter sert à détecter et réagir aux interactions de la souris sur un widget. C’est surtout utile pour les applications web et desktop (moins pour mobile).

class SettingPartState extends State<SettingPart> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: widget.onEnter,
      child: Text(
        widget.text,
        style: TextStyle(
          decoration: widget.mouseRegion
              ? TextDecoration.underline
              : TextDecoration.none,
          color: widget.switchValue
              ? DarkColor.kTextColor
              : LightColor.kTextColor,
        ),
      ),
    );
  }
}
