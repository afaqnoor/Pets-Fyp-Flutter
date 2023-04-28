import 'package:flutter/material.dart';

class CatDetails extends StatefulWidget {
  const CatDetails({super.key});

  @override
  State<CatDetails> createState() => _CatDetailsState();
}

class _CatDetailsState extends State<CatDetails> {
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
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 2.5,
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
                        'images/cats/Aegean.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Aegean',
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
                        'images/cats/American Bobtail.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'American Bobtail',
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
                        'images/cats/American Curl.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'American Curl',
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
                        'images/cats/Fluffy.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    'Fluffy',
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
                        'images/cats/Leo.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Leo',
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
                        'images/cats/Oscar.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Oscar',
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
                        'images/cats/Smudge.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Smudge',
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
                        'images/cats/Whiskers.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    'Wiskers',
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
