import 'package:flutter/material.dart';
import 'package:telegramclone/widgets/custom_divider.dart';
import 'package:telegramclone/widgets/simple_app_bar.dart';

import '../../widgets/chat_notification_settings_tile.dart';
import '../../widgets/section_title.dart';
import '../../widgets/simple_notifications_tile.dart';

class NotificationsSettingsPage extends StatelessWidget {
  const NotificationsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(
        title: "Notifications & Sounds",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Notifications for chats

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDivider(),
                SectionTitle(
                  title: "Notifications for chats",
                ),
                ChatNotificationSettingsTile(
                  title: "Private Chats",
                  subtitle: "Tap to change",
                  value: false,
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 28,
                  ),
                ),
                ChatNotificationSettingsTile(
                  title: "Groups",
                  subtitle: "Tap to change",
                  value: false,
                  icon: Icon(
                    Icons.group,
                    size: 28,
                  ),
                ),
                ChatNotificationSettingsTile(
                  title: "Channels",
                  subtitle: "On, 1 exception",
                  value: false,
                  icon: Icon(
                    Icons.group_work_outlined,
                    size: 28,
                  ),
                ),
                ChatNotificationSettingsTile(
                  title: "Stories",
                  subtitle: "Off, 4 exceptions",
                  value: false,
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 28,
                  ),
                ),
                ChatNotificationSettingsTile(
                  title: "Reactions",
                  subtitle: "Messages,Stories",
                  value: false,
                  icon: Icon(
                    Icons.heart_broken_outlined,
                    size: 28,
                  ),
                ),
              ],
            ),
            CustomDivider(),
            //Calls
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "Calls"),
                SimpleNotificationsTile(
                  title: "Vibrate",
                  switchtrailing: false,
                  trailingtext: "Default",
                ),
                SimpleNotificationsTile(
                  title: "Ringtones",
                  switchtrailing: false,
                  trailingtext: "Default",
                )
              ],
            ),
            CustomDivider(),
            //Badge Counter
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "Badge Counter"),
                SimpleNotificationsTile(title: "Enabled", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "Include Mute Chats", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "Count Unread Messages", switchtrailing: true),
              ],
            ),
            CustomDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "In-App Notifications"),
                SimpleNotificationsTile(
                    title: "In-App Sounds", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "In-App Vibrate", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "In-App Preview", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "In-Chat Sounds", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "Importance", switchtrailing: true),
              ],
            ),
            CustomDivider(),
            //Events
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "Events"),
                SimpleNotificationsTile(
                    title: "Contact joined Telegram", switchtrailing: true),
                SimpleNotificationsTile(
                    title: "Pinned Messages", switchtrailing: true),
              ],
            ),
            CustomDivider(),
            //Other
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "Other"),
                SimpleNotificationsTile(
                  title: "Keep Alive Service",
                  switchtrailing: true,
                  subtitle:
                      "Relaunch app when shut down ,Enable for reliable notifications",
                ),
                SimpleNotificationsTile(
                  title: "Keep Alive Service",
                  switchtrailing: true,
                  subtitle:
                      "Keep a low impact connection to Telegram for reliable notifications",
                ),
                SimpleNotificationsTile(
                  title: "Repeat Notifications",
                  switchtrailing: false,
                  trailingtext: "1 Hour",
                ),
                CustomDivider(),
                SectionTitle(title: "Reset"),
                SimpleNotificationsTile(
                  title: "Reset",
                  switchtrailing: false,
                  trailingtext: "",
                  subtitle:
                      "Undo all customized settings for all contacts , groups and channels ",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
