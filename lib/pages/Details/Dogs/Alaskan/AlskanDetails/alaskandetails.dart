import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Details/Dogs/Alaskan/daycare.dart';
import 'package:intoduction_screens/pages/Details/Dogs/Alaskan/healtcare.dart';
import 'package:intoduction_screens/pages/Details/Dogs/Alaskan/hyginic.dart';
import 'package:intoduction_screens/pages/Details/Dogs/Alaskan/training.dart';

class AlaskanDetails extends StatefulWidget {
  const AlaskanDetails({super.key});

  @override
  State<AlaskanDetails> createState() => _AlaskanDetailsState();
}

class _AlaskanDetailsState extends State<AlaskanDetails>
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
                children: const [
                  AlaskanHealth(),
                  AlaskanDayCare(),
                  AlaskanTraining(),
                  AlaskanHyginicCare(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
