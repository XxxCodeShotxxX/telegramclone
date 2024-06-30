import 'package:flutter/material.dart';
import 'package:telegramclone/data/messagesData.dart';
import 'package:vengamo_chat_ui/vengamo_chat_ui.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController text = TextEditingController();

  bool isVoice = false;
  bool isTextEmpty = true;

  void changeValue(String v) {
    setState(() {
      isTextEmpty = v.isEmpty;
    });
  }

  void changeMicCam() {
    setState(() {
      isVoice = !isVoice;
    });
  }

  void sendMessage() {
    setState(() {
      text.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: const Color.fromARGB(255, 83, 128, 163),
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Row(
            children: [
              IconButton(
                padding: const EdgeInsets.only(right: 0),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/14/90/05/149005f1e9c5be77a4ef276506ec3593.jpg"),
                ),
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Amine Zebbiche",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255))),
                    Text("Last seen recently",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 227, 221, 220))),
                  ],
                ),
              ),
              const Icon(
                Icons.call,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 152, 188, 140),
          Color.fromARGB(255, 114, 166, 136),
          Color.fromARGB(255, 222, 242, 214)
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return VengamoChatUI(
                        isSender: messages.reversed
                            .toList()[index]
                            .isMessegeSendedByUser,
                        senderBgColor: const Color.fromARGB(255, 254, 254, 254),
                        receiverBgColor:
                            const Color.fromARGB(255, 254, 254, 254),
                        timeLabelColor: const Color.fromARGB(255, 131, 177, 111),
                        ack: Icon(
                          messages.reversed.toList()[index].messageStatus == 0
                              ? Icons.error_outline
                              : messages.reversed
                                          .toList()[index]
                                          .messageStatus ==
                                      1
                                  ? Icons.done
                                  : Icons.done_all,
                          size: 13,
                        ),
                        time: "10:30 PM",
                        text: Text(
                          messages.reversed.toList()[index].messageContent,
                          style: const TextStyle(fontSize: 13),
                        ),
                        caption: Text(
                          messages.reversed.toList()[index].messageContent,
                          style: const TextStyle(fontSize: 13),
                        ),
                      );
                    })),
            SafeArea(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.emoji_emotions_outlined)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TextField(
                          controller: text,
                          onChanged: changeValue,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter a message ..."),
                        ),
                      ),
                    ),
                    const IconButton(
                        onPressed: null, icon: Icon(Icons.attach_file)),
                    isTextEmpty
                        ? isVoice
                            ? IconButton(
                                onPressed: changeMicCam,
                                icon: const Icon(Icons.mic))
                            : IconButton(
                                onPressed: changeMicCam,
                                icon: const Icon(Icons.camera_alt))
                        : IconButton(
                            onPressed: sendMessage,
                            icon: const Icon(Icons.send))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//chat bubble 
/*
Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        child: Align(
                          alignment: messages[index].isMessegeSendedByUser
                              ? Alignment.topRight
                              : Alignment.topLeft,
                          child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: messages[index].isMessegeSendedByUser
                                      ? Colors.lightBlue
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                messages[messages.length - 1 - index]
                                    .messageContent,
                                style: const TextStyle(fontSize: 18),
                              )),
                        ),
                      ) */