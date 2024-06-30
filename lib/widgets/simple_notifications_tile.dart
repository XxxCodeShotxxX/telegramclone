import 'package:flutter/material.dart';

class SimpleNotificationsTile extends StatelessWidget {
  const SimpleNotificationsTile({
    super.key,
    required this.title,
    this.subtitle = "",
    required this.switchtrailing,
    this.onChanged,
    this.trailingtext,
  });
  final String title;
  final String subtitle;
  final bool switchtrailing;
  // ignore: prefer_typing_uninitialized_variables
  final trailingtext;
  final Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 1),
        // color: Colors.greenAccent,
        child: (subtitle != "")
            ? ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                trailing: (switchtrailing)
                    ? Switch(value: true, onChanged: onChanged)
                    : Text(trailingtext),
              )
            : ListTile(
                title: Text(title,
                    style:
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                trailing: (switchtrailing)
                    ? Switch(value: true, onChanged: onChanged)
                    : Text(
                        trailingtext,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 86, 171, 231),
                        ),
                      ),
              ));
  }
}
