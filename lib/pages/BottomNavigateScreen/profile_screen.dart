import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../ProfielScreen/Privecy/privecy.dart';
import '../ProfielScreen/Terms/terms.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
        ),
        title: const Text(
          'Back',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 5, right: 5),
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
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
                            width: 90.0,
                            height: 90.0,
                            margin: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 6.0,
                            ),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
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
                        height: 20,
                      ),
                      Text(
                        username.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 227, 227, 227),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) =>
                                            const ProfileScreen()));
                              },
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          161, 252, 165, 194),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.pink,
                                  )),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                              title: const Text(
                                'Edit profile',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) =>
                                            const ProfileScreen()));
                              },
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          179, 245, 165, 252),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.settings,
                                    color: Colors.purple,
                                  )),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                              title: const Text(
                                'Settings',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              thickness: 2,
                              endIndent: 15,
                              indent: 15,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const Privecy()));
                              },
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          179, 252, 165, 165),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.check_box,
                                    color: Colors.red,
                                  )),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                              title: const Text(
                                'Privecy Policy',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const Terms()));
                              },
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          179, 165, 252, 211),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.notifications_active,
                                    color: Colors.greenAccent,
                                  )),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                              title: const Text(
                                'Terms & Condition',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 25.0, right: 180),
                              child: TextButton.icon(
                                  onPressed: () {
                                    FirebaseAuth.instance.signOut();
                                  },
                                  icon: const Icon(
                                    Icons.logout_rounded,
                                    color: Colors.red,
                                  ),
                                  label: const Text(
                                    'Log Out',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.red),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
