import 'package:flutter/material.dart';

class ChatNotificationSettingsTile extends StatelessWidget {
  const ChatNotificationSettingsTile({
    super.key,
    required this.title,
    required this.value,
    required this.subtitle,
    this.onChanged,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final void Function(bool)? onChanged;
  final bool value;

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Switch(
          onChanged: onChanged,
          value: value,
        ));
  }
}
