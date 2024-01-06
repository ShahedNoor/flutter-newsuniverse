import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favorite_data_controller.dart';
import 'package:newsuniverse/src/controller/starter_screen_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/home/home_screen.dart';
import 'package:newsuniverse/src/modules/starter/starter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StarterScreenController()),
        ChangeNotifierProvider(create: (context) => NewsSource()),
        ChangeNotifierProvider(create: (context) => FavoriteController())
      ],
      child: const NewsUniverse(),
    ),
  );
}

class NewsUniverse extends StatefulWidget {
  const NewsUniverse({super.key});

  @override
  State<NewsUniverse> createState() => _NewsUniverseState();
}

class _NewsUniverseState extends State<NewsUniverse> {
  @override
  Widget build(BuildContext context) {
    var starterScreenProvider = Provider.of<StarterScreenController>(context);

    return FutureBuilder<int>(
      future: starterScreenProvider.getCurrentScreenState(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int currentState = snapshot.data!;

          return MaterialApp(
            title: 'NewsUniverse',
              debugShowCheckedModeBanner: false,
              routes: {
                'starterScreen': (context) => const StarterScreen(),
                'homeScreen': (context) => const HomeScreen()
              },
              initialRoute: currentState == 1 ? 'homeScreen' : 'starterScreen');
        } else if (snapshot.hasError) {
          // Handle error
          return Text('Error: ${snapshot.error}');
        } else {
          // Show loading indicator
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
