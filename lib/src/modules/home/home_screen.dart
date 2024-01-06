import 'package:flutter/material.dart';
import 'package:newsuniverse/src/data/global_widgets/my_appbar.dart';
import 'package:newsuniverse/src/modules/favourite/favourite_screen.dart';

import '../../data/global_widgets/bottom_navigation_bar.dart';
import '../../data/global_widgets/news_screen_gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  // Switch Icons
  IconData lightIcon = Icons.light_mode;
  IconData darkIcon = Icons.dark_mode;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(
          leadingIconButton: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          actionIconButton: IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: Icon(isDarkMode ? darkIcon : lightIcon),
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          onTabTapped: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: currentIndex == 0 ? const Column(
          children: [
            NewsScreenGridView(),
          ],
        ) : FavouriteScreen(),
      ),
    );
  }
}
