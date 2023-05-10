// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../daycare.dart';
import '../healthcare.dart';
import '../hyginie.dart';
import '../trianing.dart';

class WishkerHasmter extends StatefulWidget {
  const WishkerHasmter(
      {super.key,
      required this.health,
      required this.image,
      required this.daycare,
      required this.hyginiccare,
      required this.training});

  final String? health;
  final String? daycare;
  final String? hyginiccare;
  final String? training;
  final String? image;

  @override
  State<WishkerHasmter> createState() => _WishkerHasmterState();
}

class _WishkerHasmterState extends State<WishkerHasmter>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  indicator: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(231, 247, 247, 131),
                          Colors.white
                        ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                  isScrollable: true,
                  controller: tabController,
                  tabs: [
                    Tab(
                      height: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset(
                                'images/icons/healthcare.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            const Positioned(
                                top: 70,
                                left: 15,
                                child: Text(
                                  'Healthcare',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      height: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                'images/icons/Daycare.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            const Positioned(
                                top: 75,
                                left: 20,
                                child: Text(
                                  'Daycare',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      height: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                'images/icons/Training.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            const Positioned(
                                top: 75,
                                left: 20,
                                child: Text(
                                  'Training',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      height: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset(
                                'images/icons/Hyginic_care.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            const Positioned(
                                top: 75,
                                left: 15,
                                child: Text(
                                  'Hyginincare',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  HamsterHealths(
                    image: widget.image,
                    health: widget.health,
                  ),
                  HamsterDayCare(
                    image: widget.image,
                    daycare: widget.daycare,
                  ),
                  HamsterTraning(
                    image: widget.image,
                    traning: widget.training,
                  ),
                  HamsterHyginic(
                    image: widget.image,
                    hyginic: widget.hyginiccare,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
