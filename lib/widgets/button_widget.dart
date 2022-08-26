import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 332.0,
      height: 54.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12.0),
          primary: Colors.green,
        ),
        child: const Text(
          'LOGIN!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
