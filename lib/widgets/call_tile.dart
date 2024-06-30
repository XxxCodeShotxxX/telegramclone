import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class CallTile extends StatelessWidget {
  CallTile({
    super.key,
    required this.missedCall,
    required this.outgoingCall,
    required this.dateTime,
  });
  final bool missedCall;
  final bool outgoingCall;
  final DateTime dateTime;
  late String formattedDate =
      DateFormat("EEE, MMM d, yyyy 'at' kk:mm ").format(dateTime);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const CircleAvatar(
          maxRadius: 25,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/14/90/05/149005f1e9c5be77a4ef276506ec3593.jpg"),
        ),
        trailing: const IconButton(
          onPressed: null,
          icon: Icon(Icons.call),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 3),
          child: Text("Amine Zebbiche"),
        ),
        subtitle: Row(
          children: [
            (outgoingCall)
                ? Icon(
                    Icons.call_made,
                    color: (missedCall) ? Colors.red : Colors.green,
                  )
                : Icon(
                    Icons.call_received,
                    color: (missedCall) ? Colors.red : Colors.green,
                  ),
            const SizedBox(
              width: 4,
            ),
            Flexible(
              child: Text(
                formattedDate,
                overflow: TextOverflow.visible,
              ),
            )
          ],
        ),
      ),
    );
  }
}
