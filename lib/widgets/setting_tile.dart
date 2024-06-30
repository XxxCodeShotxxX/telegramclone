import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });
  final Icon icon;
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final trailing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("clicked");
      },
      child: ListTile(
        //tileColor: Color.fromARGB(255, 221, 167, 163),
        //shape: Border(bottom: BorderSide()),
        trailing: trailing,
        leading: icon,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
