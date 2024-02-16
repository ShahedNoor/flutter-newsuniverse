import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int) onTabTapped;

  BottomNavigation({Key? key, Function(int)? onTabTapped})
      : onTabTapped = onTabTapped ?? ((_) {});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  void onTapped(index) {
    setState(() {
      currentIndex = index;
    });

    widget.onTabTapped(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chrome_reader_mode),
          label: "For You",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          label: "More",
        ),
      ],
      selectedItemColor: Colors.blue,
      currentIndex: currentIndex,
      onTap: onTapped,
    );
  }
}
