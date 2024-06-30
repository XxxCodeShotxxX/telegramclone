// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicTextField extends StatelessWidget {
  const BasicTextField({super.key, this.hint = ""});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      height: 60,
      child: TextField(
        
          style: const TextStyle(fontSize: 24),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
              fillColor: Colors.white,
             
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 22),
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none))),
    );
  }
}
