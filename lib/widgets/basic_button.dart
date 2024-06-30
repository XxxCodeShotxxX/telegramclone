// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 40,
        width: 60,
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
