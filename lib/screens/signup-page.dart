import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:untitled/routes.dart';

import '../functions/functions.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
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
                  Container(
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/trabooncom.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Container(
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                  fontSize: 40),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: buildInputDecoration(
                                  Icons.face_outlined,
                                  'First name',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter first name';
                                  }
                                  return null;
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: buildInputDecoration(
                                  Icons.face_retouching_natural,
                                  'Lasst name',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter last name';
                                  }
                                  return null;
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: buildInputDecoration(
                                Icons.email,
                                'Enter email',
                              ),
                              validator: (email) => email != null &&
                                      !EmailValidator.validate(email)
                                  ? 'Enter a valid email'
                                  : null,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: buildInputDecoration(
                                Icons.phone_android_outlined,
                                'Mobile number',
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 11) {
                                  return "Enter mobile number";
                                }
                                return null;
                              },
                            ),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: buildInputDecoration(
                                Icons.lock,
                                'Confirm Password',
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return "Invalid confirm Password";
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
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
                              )),
                        ],
                      ),
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
