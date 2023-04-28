import 'package:flutter/material.dart';
import 'package:intoduction_screens/pages/Categories/cats.dart';
import 'package:intoduction_screens/pages/Categories/dogs.dart';
import 'package:intoduction_screens/pages/Categories/hamster.dart';
import 'package:intoduction_screens/pages/Categories/parrots.dart';
import 'package:intoduction_screens/pages/Drawer/drawerpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const DrawerPage()));
            },
            icon: const Icon(Icons.menu),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
              child: Padding(
            padding: EdgeInsets.only(right: 70.0),
            child: Text(
              'Home Page',
              style: TextStyle(color: Colors.black),
            ),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(96, 107, 105, 105),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                    //indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    //indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    indicatorWeight: 3,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        child: Text(
                          'Dogs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Cats',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Parrots',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Hamster',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13),
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: tabController,
                    children: const [
                      DogsDetails(),
                      CatDetails(),
                      ParrotsDetails(),
                      HamsterDetails(),
                    ]),
              ),
            ],
          ),
        ));
  }
}
