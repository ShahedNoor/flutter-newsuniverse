import 'package:flutter/material.dart';
import 'package:newsuniverse/src/data/global_widgets/grid_view/bangla_epapers_screen_gridview.dart';
import 'package:newsuniverse/src/data/global_widgets/grid_view/international_newspapers_screen_gridview.dart';
import 'package:newsuniverse/src/data/global_widgets/grid_view/local_newspapers_screen_gridview.dart';
import 'package:newsuniverse/src/data/global_widgets/grid_view/radio_channels_screen_gridview.dart';
import 'package:newsuniverse/src/data/global_widgets/grid_view/tv_channels_screen_gridview.dart';
import 'package:newsuniverse/src/data/global_widgets/my_appbar.dart';
import 'package:newsuniverse/src/modules/favourite/favourite_screen.dart';

import '../../data/global_widgets/bottom_navigation_bar.dart';
import '../../data/global_widgets/grid_view/bangla_newspapers_screen_gridview.dart';
import '../../data/global_widgets/grid_view/online_newspapers_screen_gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

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
        body: currentIndex == 0 ? const DefaultTabController(
          initialIndex: 0,
          length: 11,
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.blue,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(text: 'Bangla Newspapers'),
                  Tab(text: 'Bangla Epapers'),
                  Tab(text: 'Online Newspapers'),
                  Tab(text: 'TV Channels'),
                  Tab(text: 'Local Newspapers'),
                  Tab(text: 'International Newspapers'),
                  Tab(text: 'Radio Channels'),
                  Tab(text: 'International TV Channels'),
                  Tab(text: 'Indian Newspapers'),
                  Tab(text: 'Magazines'),
                  Tab(text: 'Job Sites'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BanglaNewspapersScreenGridView(),
                    BanglaEpapersScreenGridView(),
                    OnlineNewspapersScreenGridView(),
                    TvChannelsScreenGridView(),
                    LocalNewspapersScreenGridView(),
                    InternationalNewspapersScreenGridView(),
                    RadioChannelsScreenGridView(),
                  ],
                ),
              )
            ],
          ),
        ) : const FavouriteScreen()
      ),
    );
  }
}
