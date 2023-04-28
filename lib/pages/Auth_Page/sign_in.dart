import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Auth_Page/sign_up.dart';
import 'package:intoduction_screens/pages/home_screen.dart';
// import 'package:gridview/pages/Auth_Screen/sign_up_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:gridview/homescreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool validation = false;
  String? errorMessage;
  bool loading = false;
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();
  final TextEditingController emaiController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/pets.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Sign In ',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Form(
                      key: _emailkey,
                      child: TextFormField(
                        controller: emaiController,
                        onSaved: (value) {
                          emaiController.text;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 25,
                            color: Colors.black,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Enter Your Email',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Eamil';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _passwordkey,
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        onSaved: (value) {
                          passwordController.text;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password,
                            size: 25,
                            color: Colors.black,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const HomeScreen()));
                        // loading = loading;
                        // if (_emailkey.currentState!.validate()) {
                        // } else if (_passwordkey.currentState!.validate()) {}
                        // setState(() {
                        //   loading = true;
                        // });
                        // signIn(emaiController.text.toString(),
                        //     passwordController.text.toString());
                        loading = false;
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: "dont't have an account?  ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const SignUp()));
                          },
                        text: "Sign Up",
                        style: const TextStyle(color: Colors.blue),
                      )
                    ])),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void signIn(String email, String password) async {
  //   if (_emailkey.currentState!.validate()) {
  //     setState(() {
  //       validation = true;
  //     });
  //     try {
  //       await auth
  //           .signInWithEmailAndPassword(email: email, password: password)
  //           .then((uid) => {
  //                 Fluttertoast.showToast(msg: "Login Successful"),
  //                 Navigator.pushAndRemoveUntil(
  //                     (context),
  //                     MaterialPageRoute(builder: (context) => const HomePage()),
  //                     (route) => false),
  //               });
  //     } on FirebaseAuthException catch (error) {
  //       setState(() {
  //         validation = false;
  //       });
  //       switch (error.code) {
  //         case "invalid-email":
  //           errorMessage = "Your email address appears to be malformed.";

  //           break;
  //         case "wrong-password":
  //           errorMessage = "Your password is wrong.";
  //           break;
  //         case "user-not-found":
  //           errorMessage = "User with this email doesn't exist.";
  //           break;
  //         case "user-disabled":
  //           errorMessage = "User with this email has been disabled.";
  //           break;
  //         case "too-many-requests":
  //           errorMessage = "Too many requests";
  //           break;
  //         case "operation-not-allowed":
  //           errorMessage = "Signing in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       Fluttertoast.showToast(msg: errorMessage!);
  //     }
  //   }
  // }
}
