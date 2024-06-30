import 'package:flutter/material.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 86, 171, 231),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: const Text("Telegram",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: const TgDrawer(),
      body: ListView.builder(
        itemCount: 24,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                color: const Color.fromARGB(0, 142, 250, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/736x/14/90/05/149005f1e9c5be77a4ef276506ec3593.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Amine Zebbiche",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Can you send the image ?",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: (index % 2 == 0)
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "${index + 1} Jan",
                      style: TextStyle(
                        fontWeight: (index % 2 == 0)
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}

class TgDrawer extends StatelessWidget {
  const TgDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: const Color.fromARGB(255, 86, 171, 231),
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 86, 171, 231),
            ),
            accountName: Text("A M ! N E"),
            accountEmail: Text("+213 65921 4520"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/c1/fe/46/c1fe469657c141a7b6a6d4fdf6c7c242.jpg",
              ),
            ),
            otherAccountsPictures: [
              Icon(
                Icons.brightness_4,
                color: Colors.white,
              ),
            ],
          ),
          ListTile(
            title: Text("My Profile"),
            leading: Icon(Icons.person),
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(255, 227, 221, 220),
          ),
          ListTile(
            title: Text("New Group"),
            leading: Icon(Icons.group),
          ),
          ListTile(
            title: Text("Contacts"),
            leading: Icon(Icons.person_outline),
          ),
          ListTile(
            title: Text("Calls"),
            leading: Icon(Icons.call),
          ),
          ListTile(
            title: Text("Saved Messages"),
            leading: Icon(Icons.bookmark),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(255, 227, 221, 220),
          ),
          ListTile(
            title: Text("Invite friends"),
            leading: Icon(Icons.person_add),
          ),
          ListTile(
            title: Text("Telegram Features"),
            leading: Icon(Icons.question_mark),
          ),
        ],
      ),
    );
  }
}
