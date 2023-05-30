// ignore_for_file: unused_field, unused_local_variable, avoid_print, prefer_adjacent_string_concatenation

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Auth_Page/sign_in.dart';
import 'package:intoduction_screens/pages/BottomNavigateScreen/profile_screen.dart';
import 'package:intoduction_screens/pages/Categories/cats.dart';
import 'package:intoduction_screens/pages/Categories/dogs.dart';
import 'package:intoduction_screens/pages/Categories/hamster.dart';
import 'package:intoduction_screens/pages/Categories/parrots.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../Categories/fish.dart';
import '../Categories/horse.dart';
import '../Categories/rabbbit.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _advancedDrawerController = AdvancedDrawerController();

  File? _image;
  final picker = ImagePicker();
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  Future getPickedImage() async {
    final pickedimage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimage != null) {
        _image = File(pickedimage.path);
      } else {
        print('No Image Picked');
      }
    });
  }

  String? username;
  _getDataFromDatabase() async {
    await FirebaseFirestore.instance
        .collection("UserAuthData")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get(const GetOptions(source: Source.cache))
        .then((snapshot) async {
      if (snapshot.exists && snapshot.get('username') != null) {
        setState(() {
          username = snapshot.data()!['username'];
        });
      } else {
        setState(() {
          username = snapshot.data()!['username'];
        });
      }
    });
  }

  @override
  void initState() {
    _getDataFromDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 7, vsync: this);
    return SafeArea(
      child: AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
            ),
          ),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: SafeArea(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          getPickedImage();
                          firebase_storage.Reference ref = firebase_storage
                              .FirebaseStorage.instance
                              .ref("Profile" + "profileimage");
                          firebase_storage.UploadTask uploadTask =
                              ref.putFile(_image!.absolute);
                          await Future.value(uploadTask);
                        },
                        child: Container(
                            width: 70.0,
                            height: 70.0,
                            margin: const EdgeInsets.only(
                              top: 24.0,
                              bottom: 64.0,
                            ),
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                              shape: BoxShape.circle,
                            ),
                            child: _image != null
                                ? ClipOval(
                                    child: Image.file(
                                      _image!,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : ClipOval(
                                    child: Image.asset(
                                      'images/empty.png',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Text(
                          username.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const HomeScreen()));
                  },
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const ProfileScreen()));
                  },
                  leading: const Icon(Icons.account_circle_rounded),
                  title: const Text('Profile'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favourites'),
                ),
                ListTile(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) =>
                                const SignIn(restorationId: 'main')),
                        (route) => false);
                  },
                  leading: const Icon(Icons.logout_outlined),
                  title: const Text('Sign Out'),
                ),
                const Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
                title: const Padding(
                  padding: EdgeInsets.only(left: 68.0),
                  child: Text('Home Page'),
                ),
                leading: IconButton(
                  onPressed: _handleMenuButtonPressed,
                  icon: ValueListenableBuilder<AdvancedDrawerValue>(
                    valueListenable: _advancedDrawerController,
                    builder: (_, value, __) {
                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: Icon(
                          value.visible ? Icons.clear : Icons.menu,
                          key: ValueKey<bool>(value.visible),
                        ),
                      );
                    },
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 9, right: 9),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/Carousal/dog.jpg',
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/cat.jpg'),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/horse.jpeg'),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/fish.jpg'),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/rabbit.jpg'),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/parrot.jpg'),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('images/Carousal/hamst.jpg'),
                        ),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height / 5,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(96, 107, 105, 105),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TabBar(
                          isScrollable: true,
                          //indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          //indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.black,
                          indicatorWeight: 3,
                          controller: tabController,
                          tabs: const [
                            Tab(
                              child: Text(
                                'Dogs',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Cats',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Horses',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Fishes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Rabbits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Parrots',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Hamster',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13),
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          controller: tabController,
                          children: const [
                            DogsDetails(),
                            CatDetails(),
                            HorseDetails(),
                            FishDetails(),
                            RabbitsDetails(),
                            ParrotsDetails(),
                            HamsterDetails(),
                          ]),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
