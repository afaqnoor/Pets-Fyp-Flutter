import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlaskanHyginicCare extends StatefulWidget {
  const AlaskanHyginicCare(
      {super.key, required this.image, required this.hyginic});

  final String? image;
  final String? hyginic;
  @override
  State<AlaskanHyginicCare> createState() => _AlaskanHyginicCareState();
}

class _AlaskanHyginicCareState extends State<AlaskanHyginicCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: widget.image!,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120,
                  memCacheHeight: 100,
                  memCacheWidth: 100,
                  errorWidget: (context, _, c) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(widget.hyginic!),
          ]),
        ),
      ),
    );
  }
}
