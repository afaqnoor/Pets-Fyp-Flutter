// ignore_for_file: avoid_print

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Details/Dogs/Alaskan/AlskanDetails/alaskandetails.dart';

class ParrotsDetails extends StatefulWidget {
  const ParrotsDetails({super.key});

  @override
  State<ParrotsDetails> createState() => _ParrotsDetailsState();
}

class _ParrotsDetailsState extends State<ParrotsDetails> {
  final firestore =
      FirebaseFirestore.instance.collection('Parrots').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder<QuerySnapshot>(
          stream: firestore,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              print(snapshot.data!.docs.length);
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => AlaskanDetails(
                                    image: CachedNetworkImage(
                                        imageUrl: snapshot.data!.docs[index]
                                            ['image_url']),
                                    name: snapshot.data!.docs[index]['name'],
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 190, 188),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: CachedNetworkImage(
                                imageUrl: snapshot
                                    .data!.docs[index]['image_url']
                                    .toString(),
                                fit: BoxFit.cover,
                                width: 160,
                                height: 120,
                                memCacheHeight: 100,
                                memCacheWidth: 100,
                                errorWidget: (context, _, c) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              snapshot.data!.docs[index]['name'].toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }),
    ));
  }
}
