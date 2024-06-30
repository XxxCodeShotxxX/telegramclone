// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:telegramclone/widgets/basic_button.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleAppBar({super.key, this.title = "null"});
  final String title;
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const BasicButton(
            buttonText: "Cancel",
          ),
          (title == "null")
              ? const Text("")
              : Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
          const BasicButton(
            buttonText: "Next",
          ),
        ]),
      ),
    );
  }
}
