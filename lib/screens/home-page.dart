import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
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
          const SizedBox(
            width: 60,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  )),
              Builder(
                builder: (context) => GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/user.jpg',
                      ),
                      maxRadius: 22,
                    ),
                  ),
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: size.height / 1.5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/Untitled-18.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: CupertinoSearchTextField(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          ),
                          onChanged: (value) {},
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: const TextSpan(
                            text: 'Make Travel\nEasy\n',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue fermentum mi ac pretium. ',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.yellow),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: const Text(
                                "View more",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
