// ignore_for_file: avoid_print

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intoduction_screens/pages/Details/Dogs/Alaskan/AlskanDetails/alaskandetails.dart';

class DogsDetails extends StatefulWidget {
  const DogsDetails({super.key});

  @override
  State<DogsDetails> createState() => _DogsDetailsState();
}

class _DogsDetailsState extends State<DogsDetails> {
  final firestore = FirebaseFirestore.instance.collection('Dogs').snapshots();
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
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const AlaskanDetails()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.8,
                            width: MediaQuery.of(context).size.width / 2.2,
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
                                    width: double.infinity,
                                    memCacheHeight: 150,
                                    memCacheWidth: 150,
                                    errorWidget: (context, _, c) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  snapshot.data!.docs[index]['name'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: MediaQuery.of(context).size.height / 4,
                          //   width: MediaQuery.of(context).size.width / 2.26,
                          //   decoration: BoxDecoration(
                          //     color: Colors.amber,
                          //     borderRadius: BorderRadius.circular(15),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // child: Container(
                    //   margin: const EdgeInsets.symmetric(vertical: 10),
                    //   height: 370,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: const Color.fromARGB(255, 227, 225, 225),
                    //     // border:
                    //     //     Border.all(color: Colors.black, width: 2),
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       ListTile(
                    //         title: Padding(
                    //           padding: const EdgeInsets.only(bottom: 15.0),
                    //           child: CachedNetworkImage(
                    //             imageUrl: snapshot
                    //                 .data!.docs[index]['image_url']
                    //                 .toString(),
                    //             fit: BoxFit.cover,
                    //             width: double.infinity,
                    //             memCacheHeight: 150,
                    //             memCacheWidth: 150,
                    //             errorWidget: (context, _, c) =>
                    //                 const Icon(Icons.error),
                    //           ),
                    //         ),
                    //         //visualDensity: VisualDensity(horizontal: -10),
                    //         subtitle: Text(
                    //           snapshot.data!.docs[index]['name'].toString(),
                    //           style:
                    //               const TextStyle(fontWeight: FontWeight.bold),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  );
                },
              );
              // return Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: ListView.builder(
              //       itemCount: snapshot.data!.docs.length,
              //       itemBuilder: (context, index) {
              //         return GridView.count(
              //           crossAxisCount: 2,
              //           mainAxisSpacing: 10,
              //           crossAxisSpacing: 10,
              //           children: [
              //             Container(
              //               height: 100,
              //               width: 100,
              //               decoration: BoxDecoration(
              //                   color: const Color.fromARGB(255, 222, 220, 220),
              //                   borderRadius: BorderRadius.circular(20)),
              //               child: Column(
              //                 children: [
              //                   SizedBox(
              //                     height: 130,
              //                     width: double.infinity,
              //                     child: Padding(
              //                       padding: const EdgeInsets.only(top: 8.0),
              //                       child: CachedNetworkImage(
              //                         imageUrl: snapshot
              //                             .data!.docs[index]['image_url']
              //                             .toString(),
              //                         fit: BoxFit.cover,
              //                         width: double.infinity,
              //                         memCacheHeight: 250,
              //                         memCacheWidth: 250,
              //                         errorWidget: (context, _, c) =>
              //                             const Icon(Icons.error),
              //                       ),
              //                     ),
              //                   ),
              //                   Text(
              //                     snapshot.data!.docs[index]['name'].toString(),
              //                     style: const TextStyle(
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ],
              //               ),
              //             )
              //           ],
              //         );
              //       },
              //     ));
            }
          }),
    ));
  }
}


// GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (ctx) => const GermanDetails()));
//             },
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 222, 220, 220),
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 130,
//                     child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             topRight: Radius.circular(20),
//                             topLeft: Radius.circular(20)),
//                         child: Image.asset(
//                           'images/dogs/GermanShepherd.jpg',
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                         )),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 6.0, top: 8),
//                     child: Text(
//                       'German Shepherd',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (ctx) => const HoundDetials()));
//             },
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 222, 220, 220),
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 130,
//                     child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             topRight: Radius.circular(20),
//                             topLeft: Radius.circular(20)),
//                         child: Image.asset(
//                           'images/dogs/Hound.jpg',
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                         )),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 6.0, top: 8),
//                     child: Text(
//                       'Hound',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 222, 220, 220),
//                 borderRadius: BorderRadius.circular(20)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 130,
//                   child: ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           topLeft: Radius.circular(20)),
//                       child: Image.asset(
//                         'images/dogs/Sporting.jpg',
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                       )),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 6.0, top: 8),
//                   child: Text(
//                     'Sporting',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 222, 220, 220),
//                 borderRadius: BorderRadius.circular(20)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 130,
//                   child: ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           topLeft: Radius.circular(20)),
//                       child: Image.asset(
//                         'images/dogs/Terrier.jpg',
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                       )),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 6.0, top: 8),
//                   child: Text(
//                     'Terrier',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (ctx) => const AlaskanDetails()));
//             },
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 222, 220, 220),
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 130,
//                     child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             topRight: Radius.circular(20),
//                             topLeft: Radius.circular(20)),
//                         child: Image.asset(
//                           'images/dogs/Alaskan Malamute.jpeg',
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                         )),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 6.0, top: 8),
//                     child: Text(
//                       'Alaskan Malamute',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (ctx) => const BuldogDetails()));
//             },
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 222, 220, 220),
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 130,
//                     child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             topRight: Radius.circular(20),
//                             topLeft: Radius.circular(20)),
//                         child: Image.asset(
//                           'images/dogs/bulldog.jpg',
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                         )),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 6.0, top: 8),
//                     child: Text(
//                       'bulldog',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 222, 220, 220),
//                 borderRadius: BorderRadius.circular(20)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 130,
//                   child: ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           topLeft: Radius.circular(20)),
//                       child: Image.asset(
//                         'images/dogs/Retriver.jpg',
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                       )),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 6.0, top: 8),
//                   child: Text(
//                     'Retriver',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 222, 220, 220),
//                 borderRadius: BorderRadius.circular(20)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 130,
//                   child: ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           topLeft: Radius.circular(20)),
//                       child: Image.asset(
//                         'images/dogs/Pomeranian.jpg',
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                       )),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 6.0, top: 8),
//                   child: Text(
//                     'Pomeranian',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),