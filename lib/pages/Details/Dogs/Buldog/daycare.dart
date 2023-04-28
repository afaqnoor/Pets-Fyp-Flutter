import 'package:flutter/material.dart';

class BuldogDayCare extends StatefulWidget {
  const BuldogDayCare({super.key});

  @override
  State<BuldogDayCare> createState() => _BuldogDayCareState();
}

class _BuldogDayCareState extends State<BuldogDayCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'images/dogs/bulldog.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
            ),
            const SizedBox(height: 20),
            const Text(
                "Originally bred as herding dogs, German Shepherds are sure to love doggy BuldogDayCare. They're famous for their obedience and intelligence, making them perfect for police work. These traits mean they don't like being left without stimulation or company.")
          ],
        ),
      ),
    );
  }
}
