import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
            icon: Icon(Icons.chrome_reader_mode_outlined), label: "For You"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.amp_stories_rounded), label: "Browse"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.download_for_offline), label: "Downloaded"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.bookmark), label: "Bookmarks"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.more_horiz_rounded), label: "More"),
      ],
      backgroundColor: Colors.black,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.blue,
      currentIndex: currentIndex,
      onTap: onTapped,
    );
  }
}
