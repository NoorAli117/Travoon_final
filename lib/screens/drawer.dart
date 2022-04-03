import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(40.0),
            ),
            child: Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(
                            horizontal: 5,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: const Text(
                                  'Hyder Ali',
                                  style: TextStyle(fontSize: 28),
                                ),
                              ),
                              const Text('hyderali@gmail.com'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/user.jpg'),
                                maxRadius: 40.0,
                              )),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Privacy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.privacy_tip_outlined),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Payments",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.payment),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Help center",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.help_center_rounded),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Invite Froends",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.insert_invitation),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Notification",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                      "Rate Us",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/arow.png'),
                      height: 15,
                      width: 15,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.rate_review_outlined),
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    indent: 70,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
