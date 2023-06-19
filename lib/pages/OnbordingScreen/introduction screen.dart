// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Auth_Page/sign_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child: Image(
                          height: 250, image: AssetImage('images/Jack.png')),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: const [
                        Text(
                          "Find petcare areound \n      your location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Just turn your location and you will find \n       the nearest pet care you wish.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                        child: Image(
                            height: 250, image: AssetImage('images/Billu.png')),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: const [
                          Text(
                            "Let us give the best\n       treatment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Get the best treatment for your \n            animal with us.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child: Image(
                          height: 250, image: AssetImage('images/Bullet.png')),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: const [
                        Text(
                          "Give the good enivroment\n              with pets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Get the best training for your \n            animal with us.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const SignIn(
                              restorationId: 'main',
                            )),
                    (route) => false),
                // Navigator.pushAndRemoveUntil(context, Materpa, (route) => false)
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.black,
                    activeDotColor: Colors.teal,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                ),
              ),
              TextButton(
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onPressed: () => controller.nextPage(
                  duration: const Duration(milliseconds: 300),

                  curve: Curves.easeInOut,

                  //Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
