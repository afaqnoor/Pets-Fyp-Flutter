import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../ProfielScreen/Privecy/privecy.dart';
import '../ProfielScreen/Terms/terms.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color.fromARGB(255, 235, 168, 247),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Name Here')
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
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const ProfileScreen()));
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
                                      builder: (ctx) => const ProfileScreen()));
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
              ],
            )),
      ),
    );
  }
}
