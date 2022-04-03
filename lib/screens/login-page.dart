import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/functions/functions.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButtton = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: size.height / 1.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Untitled-15.png'),
                  fit: BoxFit.fitHeight,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                ),
              ),
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image(
                          alignment: Alignment.topCenter,
                          image:
                              const AssetImage('assets/images/trabooncom.png'),
                          height: size.height / 2.3,
                        ),
                      ),
                    ],
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: buildInputDecoration(
                              Icons.email,
                              'Enter email',
                            ),
                            validator: (email) =>
                                email != null && !EmailValidator.validate(email)
                                    ? 'Enter a valid email'
                                    : null,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: buildInputDecoration(
                              Icons.lock,
                              'Password',
                            ),
                            validator: (value) {
                              if (value!.isEmpty || value.length < 8) {
                                return "Invalid Password";
                              }
                              return null;
                            },
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ).p8(),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              changeButtton = true;
                            });
                            setState(() {
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                            });
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.yellow),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  TextButton(
                    onPressed: () => () {},
                    child: const Text(
                      'Forget Your Password?',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'or connect with',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 120,
                            child: SignInButton(
                              Buttons.Email,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              text: 'Gmail',
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 120,
                            child: SignInButton(
                              Buttons.Facebook,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              text: 'FaceBook',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Dont have an Account? ',
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(color: Colors.yellow),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.signUpRoute);
                                  },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
