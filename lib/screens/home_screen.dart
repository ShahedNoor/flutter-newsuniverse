import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:newsuniverse/screens/favourite_screen.dart';
import 'package:newsuniverse/screens/more_screen.dart';
import 'package:newsuniverse/screens/search_screen.dart';

import '../widgets/global_widgets/bottom_navigation_bar.dart';
import '../widgets/global_widgets/my_appbar.dart';
import '../widgets/grid_view/bangla_epapers_screen_gridview.dart';
import '../widgets/grid_view/bangla_newspapers_screen_gridview.dart';
import '../widgets/grid_view/indian_newspapers_screen_gridview.dart';
import '../widgets/grid_view/international_newspapers_screen_gridview.dart';
import '../widgets/grid_view/international_tv_channels_screen_gridview.dart';
import '../widgets/grid_view/local_newspapers_screen_gridview.dart';
import '../widgets/grid_view/magazines_screen_gridview.dart';
import '../widgets/grid_view/online_newspapers_screen_gridview.dart';
import '../widgets/grid_view/radio_channels_screen_gridview.dart';
import '../widgets/grid_view/tv_channels_screen_gridview.dart';

class HomeScreen extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const HomeScreen({super.key, this.savedThemeMode});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(useMaterial3: true),
      dark: ThemeData.dark(useMaterial3: true),
      initial: widget.savedThemeMode ?? AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        home: const ForAdaptiveTheme(),
      ),
    );
  }
}

class ForAdaptiveTheme extends StatefulWidget {
  const ForAdaptiveTheme({super.key});

  @override
  State<ForAdaptiveTheme> createState() => _ForAdaptiveThemeState();
}

class _ForAdaptiveThemeState extends State<ForAdaptiveTheme> {
  // Switch Icons
  IconData lightIcon = Icons.light_mode;
  IconData darkIcon = Icons.dark_mode;
  IconData systemDefault = Icons.android;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final themeManager = AdaptiveTheme.of(context);
    return Scaffold(
      appBar: MyAppBar(
        leadingIconButton: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
          icon: const Icon(Icons.search),
        ),
        actionIconButton: IconButton(
          onPressed: () {
            themeManager.toggleThemeMode();
          },
          icon: Icon(
            themeManager.mode.isLight
                ? lightIcon
                : themeManager.mode.isDark
                    ? darkIcon
                    : systemDefault,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        onTabTapped: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: currentIndex == 0
          ? const DefaultTabController(
              initialIndex: 0,
              length: 10,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.blue,
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
                        InternationalTvChannelsScreenGridView(),
                        IndianNewspapersScreenGridView(),
                        MagazineScreenGridView(),
                      ],
                    ),
                  )
                ],
              ),
            )
          : currentIndex == 1
              ? const FavouriteScreen()
              : const MoreScreen(),
    );
  }
}
