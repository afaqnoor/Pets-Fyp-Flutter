import 'package:flutter/material.dart';

class GermanHyginicCare extends StatefulWidget {
  const GermanHyginicCare({super.key});

  @override
  State<GermanHyginicCare> createState() => _GermanHyginicCareState();
}

class _GermanHyginicCareState extends State<GermanHyginicCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'images/dogs/GermanShepherd.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
          ),
          const SizedBox(height: 20),
          const Text('Bath. 4 weeks.\n'
              'Hair Brushing. 7 days.\n'
              'Ears Cleaning. 2 weeks.\n'
              'Nails Clipping. 4 weeks.\n'
              'Teeth Brushing. 4 weeks.\n'
              'Professional Grooming. 3 months.'),
        ]),
      ),
    );
  }
}