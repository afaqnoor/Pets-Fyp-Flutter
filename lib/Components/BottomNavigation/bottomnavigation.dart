import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../pages/BottomNavigateScreen/calender.dart';
import '../../pages/BottomNavigateScreen/chatlist.dart';
import '../../pages/BottomNavigateScreen/profile_screen.dart';
import '../../pages/home_screen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChatList(),
    Calender(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          // borderRadius: const BorderRadius.only(
          //     topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          color: const Color.fromARGB(96, 107, 105, 105),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 6,
            activeColor: Colors.white,
            iconSize: 25,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.black,
            color: Colors.white,
            tabs: const [
              GButton(
                icon: Icons.home,
                iconColor: Color.fromARGB(255, 128, 126, 126),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.chat,
                textColor: Colors.black,
                iconColor: Color.fromARGB(255, 128, 126, 126),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.calendar_month,
                iconColor: Color.fromARGB(255, 128, 126, 126),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.person,
                textColor: Colors.black,
                iconColor: Color.fromARGB(255, 128, 126, 126),
                iconActiveColor: Colors.white,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
