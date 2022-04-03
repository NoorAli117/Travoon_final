import 'package:flutter/material.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/screens/drawer.dart';
import 'package:untitled/screens/home-page.dart';
import 'package:untitled/screens/login-page.dart';
import 'package:untitled/screens/main-page.dart';
import 'package:untitled/screens/signup-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.signUpRoute: (context) => SignUpPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
        });
  }
}



// class BackgroundImage extends StatelessWidget {
//   const BackgroundImage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (bounds) => LinearGradient(
//         colors: [Colors.black, Colors.black12],
//         begin: Alignment.bottomCenter,
//         end: Alignment.center,
//       ).createShader(bounds),
//       blendMode: BlendMode.darken,
//       child: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/home.jpg'),
//             fit: BoxFit.fitWidth,
//             colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
//           ),
//         ),
//       ),
//     );
//   }
// }
