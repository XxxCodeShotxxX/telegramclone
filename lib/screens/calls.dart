import 'package:flutter/material.dart';

import '../widgets/call_tile.dart';
import '../widgets/simple_app_bar.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: "Calls",),
      body: ListView.builder(
          itemCount: 22,
          itemBuilder: (BuildContext context, int index) {
            return CallTile(
              missedCall: index % 2 == 0,
              outgoingCall: index % 3 == 1,
              dateTime: DateTime(2024, 1, index, 13, 22, 57),
            );
          }),
    );
  }
}
