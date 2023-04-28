import 'package:flutter/material.dart';

class AlaskanTraining extends StatefulWidget {
  const AlaskanTraining({super.key});

  @override
  State<AlaskanTraining> createState() => _AlaskanTrainingState();
}

class _AlaskanTrainingState extends State<AlaskanTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'images/dogs/Alaskan Malamute.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
          ),
          const SizedBox(height: 20),
          const Text(
              "The most effective and easy-to-understand system for German Shepherds to learn is called positive reward AlaskanTraining. Using positive rewards allows you to mark the specific behaviors your German Shepherd performs right at nearly the exact moment they do them."),
        ]),
      ),
    );
  }
}
