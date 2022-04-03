import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool changeButtton = false;
  final formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        changeButtton = true;
      });
      setState(() {
        changeButtton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage('assets/images/Untitled-15.png'),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.dstATop),
                    fit: BoxFit.fitHeight),
              ),
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/images/trabooncom.png'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.loginRoute);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 35,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.signUpRoute);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.signUpRoute);
                          },
                          child: const Text('Need help?'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
