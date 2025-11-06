import 'package:flutter/material.dart';
import 'package:travenar/screens/home_screen/calender_screen.dart';
import 'package:travenar/screens/home_screen/home_screen.dart';
import 'package:travenar/screens/home_screen/messanging_screen.dart';
import 'package:travenar/screens/home_screen/profile_screen.dart';
import 'package:travenar/screens/home_screen/search_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _selectedIndex = 0;

  final List<Widget> _pages = const [
   HomeScreen(),
    CalenderScreen(),
    SearchScreen(),
    MessangingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search" ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}