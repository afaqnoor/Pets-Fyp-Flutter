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
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child: Image(
                          height: 250, image: AssetImage('images/Jack.png')),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      title: Center(
                          child: Text(
                        'Find Pet Care Around Your Loacation',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                      subtitle: Text(
                          'Four Paws Pets clinic Lore m Ipsum is  the bakery of all kind of sweets and cakes simply dummy text of the printing and typesetting industry'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                        child: Image(
                            height: 250, image: AssetImage('images/Billu.png')),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        title: Center(
                          child: Text(
                            'Find Pet Care Around Your Location',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          'Lore m Ipsum is  the bakery of all kind of sweets and cakes simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child: Image(
                          height: 250, image: AssetImage('images/Bullet.png')),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        title: Center(
                            child: Text(
                          'Find Pet Care Around Your Location ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                        subtitle: Text(
                          'Lore m Ipsum is  the bakery of all kind of sweets and cakes simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
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
                child: const Text('Skip'),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (ctx) => const SignIn()),
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
                child: const Text('Next'),
                onPressed: () => controller.nextPage(
                  duration: const Duration(milliseconds: 400),
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
