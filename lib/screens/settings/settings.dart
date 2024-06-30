import 'package:flutter/material.dart';
import 'package:telegramclone/widgets/custom_divider.dart';

import '../../widgets/setting_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  final double defaultTopMargin = 250.0 - 4.0;
  final double scaleStart = 160.0;
  final double scaleEnd = 80.0;

  @override
  Widget build(BuildContext context) {
    double top = defaultTopMargin;
    double scale = 1.0;

    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;

      if (offset < defaultTopMargin - scaleStart) {
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        scale = (defaultTopMargin - scaleEnd - offset) /
            (defaultTopMargin - scaleEnd - scaleStart);
        // Ensure scale is not negative or greater than 1
        scale = scale.clamp(0.0, 1.0);
      } else {
        scale = 0.0;
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 250.0,
                  floating: false,
                  pinned: true,
                  backgroundColor: Colors.blueAccent,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Text(
                      "Miraei Tlisaria",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    background: Image.network(
                      "https://i.pinimg.com/736x/c1/fe/46/c1fe469657c141a7b6a6d4fdf6c7c242.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                child: Column(
                  children: [
                    //Account Info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomDivider(),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Account",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 162, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const ListTile(
                          title: Text("+213 6 75845087"),
                          subtitle: Text("Tap to change mobile number"),
                        ),
                        const ListTile(
                          title: Text(
                              "وَاصْبِرْ عَلَىٰ مَا يَقُولُونَ وَاهْجُرْهُمْ هَجْرًا جَمِيلًا"),
                          subtitle: Text("Bio"),
                        ),
                        ListTile(
                          title: const Text("@Miraeitlisaria"),
                          subtitle: const Text("Username"),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.qr_code),
                          ),
                        ),
                        const CustomDivider(),
                      ],
                    ),

                    //settings
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 162, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.chat_bubble_outline_rounded,
                            size: 28,
                          ),
                          title: "Chat Settings",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.lock_outline,
                            size: 28,
                          ),
                          title: "Privacy & Security",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.notifications_outlined,
                            size: 28,
                          ),
                          title: "Notifications & Sounds",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.pie_chart_outline,
                            size: 28,
                          ),
                          title: "Data & Storage",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.battery_0_bar_outlined,
                            size: 28,
                          ),
                          title: "Power Usage",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.folder_outlined,
                            size: 28,
                          ),
                          title: "Chat Folders",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.devices,
                            size: 28,
                          ),
                          title: "Devices",
                        ),
                        SettingTile(
                          icon: Icon(
                            Icons.language_outlined,
                            size: 28,
                          ),
                          title: "Language",
                          trailing: Text(
                            "English",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 86, 171, 231),
                            ),
                          ),
                        ),
                      ],
                    )

                    //Prumium
                    ,
                    const CustomDivider(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SettingTile(
                            icon: Icon(
                              Icons.star,
                              size: 28,
                            ),
                            title: "Telegram Prumium"),
                        SettingTile(
                            icon:
                                Icon(Icons.business_center_outlined, size: 28),
                            title: "Telegram Business"),
                        SettingTile(
                            icon: Icon(Icons.card_giftcard_outlined, size: 28),
                            title: "Gift Prumium"),
                      ],
                    ),
                    const CustomDivider(),

                    //help
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SettingTile(
                            icon: Icon(
                              Icons.question_answer_outlined,
                              size: 28,
                            ),
                            title: "Ask a Question"),
                        SettingTile(
                            icon: Icon(Icons.question_mark_outlined, size: 28),
                            title: "Telegram FAQ"),
                        SettingTile(
                            icon: Icon(Icons.privacy_tip_outlined, size: 28),
                            title: "Privacy Policy"),
                      ],
                    ),
                    const CustomDivider(),

                    const Text("Telegram Clone For Android by CODEFENCE ")
                  ],
                ),
              ),
            ),
          ),
          // Camera button overlay
          Positioned(
            top: top,
            right: 16,
            child: Transform.scale(
              scale: scale,
              child: FloatingActionButton(
                onPressed: () {},
                //mini: true,
                backgroundColor: Colors.blue,
                child: const Icon(Icons.camera_alt),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
