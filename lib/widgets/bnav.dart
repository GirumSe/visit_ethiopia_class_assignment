import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedTab,
      onTap: _changeTab,
      selectedItemColor: const Color.fromARGB(255, 7, 7, 7),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max_rounded),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_rounded),
          label: "Location",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_rounded),
          label: "Bookmark",
        ),
      ],
    );
  }
}
