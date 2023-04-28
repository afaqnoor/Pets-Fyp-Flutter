import 'package:flutter/material.dart';

class ParrotsDetails extends StatefulWidget {
  const ParrotsDetails({super.key});

  @override
  State<ParrotsDetails> createState() => _ParrotsDetailsState();
}

class _ParrotsDetailsState extends State<ParrotsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/african.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'african',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/cockatiel.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'cockatiel',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/Lola.jpeg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Lola',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/Ollie.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Ollie',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/palm.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'palm',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/Ricky.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Ricky',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/Ruby.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Ruby',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'images/parrots/Spike.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Spike',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
