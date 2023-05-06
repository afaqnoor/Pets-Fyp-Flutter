import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/ChatScreen/chat_screen.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final firestore = FirebaseFirestore.instance
      .collection('UserAuthData')
      .where('uid', isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(child: Text("Chat List")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
                stream: firestore,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => ChatPage(
                                            // pass uid of another user
                                            frienduid: snapshot
                                                .data!.docs[index]['uid'],
                                            username: snapshot
                                                .data!.docs[index]['username']
                                                .toString(),
                                            phonenumber: snapshot.data!
                                                .docs[index]['phonenumber']
                                                .toString())));
                              },
                              child: Card(
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.person_outline_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  title: Text(snapshot
                                      .data!.docs[index]['username']
                                      .toString()),
                                  subtitle: Text(snapshot
                                      .data!.docs[index]['phonenumber']
                                      .toString()),
                                ),
                              ),
                            );
                          }),
                    );
                  }
                  return const Text('');
                })
          ],
        ),
      ),
    );
  }
}
