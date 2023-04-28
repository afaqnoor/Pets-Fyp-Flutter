import 'package:flutter/material.dart';

class HoundHealthCare extends StatefulWidget {
  const HoundHealthCare({super.key});

  @override
  State<HoundHealthCare> createState() => _HoundHealthCareState();
}

class _HoundHealthCareState extends State<HoundHealthCare> {
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
                    'images/dogs/Hound.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
            ),
            const SizedBox(height: 20),
            const Text(
                'To care for a German Shepherd, you must feed him a highly nutritious diet, exercise him daily for 1.5 to 2 hours, and socialize him so that he feels safe around humans and other dogs. Ongoing training, twice-weekly grooming, and vet check-ups are all part of caring for a GSD.')
          ],
        ),
      ),
    );
  }
}
