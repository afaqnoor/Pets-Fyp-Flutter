import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HamsterTraning extends StatefulWidget {
  const HamsterTraning({super.key, required this.traning, required this.image});

  final String? traning;
  final String? image;
  @override
  State<HamsterTraning> createState() => _HamsterTraningState();
}

class _HamsterTraningState extends State<HamsterTraning> {
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
            Text(widget.traning!)
          ],
        ),
      ),
    );
  }
}
