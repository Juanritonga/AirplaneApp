import 'package:flutter/material.dart';
import 'package:tugas_final/screens/boeing.dart';
import 'package:tugas_final/screens/home.dart';
import 'package:tugas_final/screens/profile.dart';
import 'package:tugas_final/screens/boeing.dart';
import 'home2.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final screens = [
    MyWidget(),
    HomePage(),
    BoeingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active), label: 'Air Bus'),
          BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active), label: 'Boeing'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}