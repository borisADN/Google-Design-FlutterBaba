import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final bool switchValue;
  final void Function(bool)? onChanged;
  const SwitchButton({
    super.key,
    required this.switchValue,
    required this.onChanged,
  });

  @override
  SwitchButtonState createState() => SwitchButtonState();
}

class SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: widget.switchValue,
      activeTrackColor: Colors.blue,
      onChanged: widget.onChanged,
    );
  }
}
