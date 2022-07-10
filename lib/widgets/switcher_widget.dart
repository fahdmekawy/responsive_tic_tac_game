import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SwitcherWidget extends StatefulWidget {
  bool isSwitch;
  SwitcherWidget({Key? key, this.isSwitch = false}) : super(key: key);

  @override
  State<SwitcherWidget> createState() => _SwitcherWidgetState();
}

class _SwitcherWidgetState extends State<SwitcherWidget> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: const Text(
        'Turn on/off two players',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
      value: widget.isSwitch,
      onChanged: (bool newValue) {
        setState(() {
          widget.isSwitch = newValue;
        });
      },
    );
  }
}
