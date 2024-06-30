import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    color: Colors.white,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_call,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )),
                ],
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                backgroundColor: const Color.fromARGB(255, 86, 171, 231),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: const Text(
                    "A M ! N E",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ) ,
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
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Info",
                        style: TextStyle(
                          color: Color.fromARGB(255, 86, 171, 231),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const ListTile(
                      title: Text(
                        "+213 65921 4520",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      subtitle: Text(
                        "Mobile",
                        style: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154)),
                      ),
                      //leading: Icon(Icons.phone),
                    ),
                    const ListTile(
                      title: Text(
                        "Always be yourself because an original is always more valuable than a copy",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      subtitle: Text(
                        "Bio",
                        style: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154)),
                      ),
                      //leading: Icon(Icons.info_outline),
                    ),
                    ListTile(
                      title: const Text(
                        "@Medxmine",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      subtitle: const Text(
                        "Username",
                        style: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154)),
                      ),
                      //leading: const Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code,
                          color: Color.fromARGB(255, 86, 171, 231),
                        ),
                      ),
                    ),
                    const ListTile(
                      title: Text(
                        "July 06, 2005 (19 years old)",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      subtitle: Text(
                        "Date of birth",
                        style: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154)),
                      ),
                      //leading: Icon(Icons.cake),
                    ),
                    ListTile(
                      title: const Text(
                        "Notifications",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      subtitle: const Text(
                        "off",
                        style: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154)),
                      ),
                      //leading: const Icon(Icons.notifications_off),
                      trailing: Switch(
                        value: true,
                        onChanged: (v) {},
                        activeColor: const Color.fromARGB(255, 86, 171, 231),
                      ),
                    ),
                    const Divider(
                      thickness: 16,
                      color: Color.fromARGB(255, 227, 221, 220),
                    ),
                    const ListTile(
                      title: Text("Add to contacts",
                          style: TextStyle(
                            color: Color.fromARGB(255, 86, 171, 231),
                          )),
                      leading: Icon(
                        Icons.person_add,
                        color: Color.fromARGB(255, 86, 171, 231),
                      ),
                    ),
                    const Divider(
                      thickness: 16,
                      color: Color.fromARGB(255, 227, 221, 220),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 8),
                      child: Text(
                        "Photos",
                        style: TextStyle(
                          color: Color.fromARGB(255, 86, 171, 231),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GridView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4),
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            "https://i.pinimg.com/736x/c1/fe/46/c1fe469657c141a7b6a6d4fdf6c7c242.jpg",
                            fit: BoxFit.cover,
                          );
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
