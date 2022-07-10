import 'package:flutter/material.dart';

class RepeatButton extends StatelessWidget {
  final void Function()? onTap;
  const RepeatButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: const Icon(Icons.replay),
      label: const Text('Repeat the game'),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).splashColor),
      ),
    );
  }
}
