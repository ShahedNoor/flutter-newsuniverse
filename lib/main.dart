import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:newsuniverse/screens/home_screen.dart';
import 'package:newsuniverse/screens/starter_screen.dart';
import 'package:newsuniverse/utils/news_source.dart';
import 'package:provider/provider.dart';
import 'controllers/favourite_data_controller.dart';
import 'controllers/starter_screen_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StarterScreenController()),
        ChangeNotifierProvider(create: (context) => NewsSource()),
        ChangeNotifierProvider(create: (context) => FavoriteDataController())
      ],
      child: NewsUniverse(savedThemeMode: savedThemeMode,),
    ),
  );
}

class NewsUniverse extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const NewsUniverse({super.key, this.savedThemeMode});

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

          return AdaptiveTheme(
            light: ThemeData.light(useMaterial3: true),
            dark: ThemeData.dark(useMaterial3: true),
            initial: AdaptiveThemeMode.system,
            builder: (theme, darkTheme) => MaterialApp(
                title: 'NewsUniverse',
                debugShowCheckedModeBanner: false,
                theme: theme,
                darkTheme: darkTheme,
                routes: {
                  'starterScreen': (context) => const StarterScreen(),
                  'homeScreen': (context) => HomeScreen(savedThemeMode: widget.savedThemeMode,)
                },
                initialRoute:
                    currentState == 1 ? 'homeScreen' : 'starterScreen'),
          );
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
