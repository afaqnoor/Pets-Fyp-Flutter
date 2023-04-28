import 'package:flutter/material.dart';

class HamsterDetails extends StatefulWidget {
  const HamsterDetails({super.key});

  @override
  State<HamsterDetails> createState() => _HamsterDetailsState();
}

class _HamsterDetailsState extends State<HamsterDetails> {
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
                        'images/hamster/Fuzzy.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Fuzzy',
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
                        'images/hamster/Harry.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Harry',
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
                        'images/hamster/Chomper.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Chomper',
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
                        'images/hamster/cheeck.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Cheeck',
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
                        'images/hamster/Hoppy.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Hoppy',
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
                        'images/hamster/Mr. Whiskers.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Whiskers',
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
                        'images/hamster/Nibbles.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Nibbles',
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
                        'images/hamster/Chewy.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Chewy',
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
