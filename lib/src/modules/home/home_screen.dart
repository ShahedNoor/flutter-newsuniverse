import 'package:flutter/material.dart';
import 'package:newsuniverse/src/data/global_widgets/appbar.dart';

import '../../data/global_widgets/bottom_navigation_bar.dart';
import '../../data/global_widgets/news_screen_gridview.dart';
import '../../data/global_widgets/segmented_dropdown_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFF1D1F21),
        appBar: AppBarView(),
        bottomNavigationBar: BottomNavigation(),
        body: Column(
          children: [
            SegmentedDropdownMenu(),
            NewsScreen(),
          ],
        ),
      ),
    );
  }
}
