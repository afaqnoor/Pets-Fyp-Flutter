import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Auth_Page/sign_in.dart';
// import 'package:gridview/pages/Auth_Screen/sign_up_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:gridview/homescreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool validation = false;
  String? errorMessage;
  bool loading = false;
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phonekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _conpasskey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();
  final TextEditingController emaiController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
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
                      'Sign Up ',
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
                      height: 20,
                    ),
                    Form(
                      key: _phonekey,
                      child: TextFormField(
                        obscureText: true,
                        controller: phoneController,
                        onSaved: (value) {
                          phoneController.text;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            size: 25,
                            color: Colors.black,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Phone Number',
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
                            return 'Enter Phone';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                      height: 20,
                    ),
                    Form(
                      key: _conpasskey,
                      child: TextFormField(
                        obscureText: true,
                        controller: confirmpasswordController,
                        onSaved: (value) {
                          confirmpasswordController.text;
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
                          hintText: 'Confirm Password',
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
                            return 'Enter Confirm Password';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        loading = loading;
                        if (_emailkey.currentState!.validate()) {
                        } else if (_phonekey.currentState!.validate()) {
                        } else if (_passwordkey.currentState!.validate()) {
                        } else if (_conpasskey.currentState!.validate()) {}
                        setState(() {
                          loading = true;
                        });
                        // SignUp(emaiController.text.toString(),
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
                          'Sign Up',
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
                        text: "already have an account?  ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const SignIn()));
                          },
                        text: "Sign In",
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

  // void SignUp(String email, String password) async {
  //   if (_emailkey.currentState!.validate()) {
  //     setState(() {
  //       validation = true;
  //     });
  //     try {
  //       await auth
  //           .SignUpWithEmailAndPassword(email: email, password: password)
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
  //           errorMessage = "SignUpg in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       Fluttertoast.showToast(msg: errorMessage!);
  //     }
  //   }
  // }
}
