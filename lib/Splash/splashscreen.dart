// ignore_for_file: unused_field

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/OnbordingScreen/introduction%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (ctx) => const IntroductionScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Image.asset('images/pets.png'),
      )),
    );
  }
}
