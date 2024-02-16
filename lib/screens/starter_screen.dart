import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/starter_screen_controller.dart';


class StarterScreen extends StatefulWidget {
  const StarterScreen({super.key});

  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  @override
  Widget build(BuildContext context) {
    var starterScreenProvider = Provider.of<StarterScreenController>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/starter_icon/starter_icon.png",
              width: MediaQuery.sizeOf(context).width / 3,
              height: MediaQuery.sizeOf(context).height / 3,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Welcome to NewsUniverse!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22, 0, 22, 70),
              child: Text(
                "Discover the world's best newspapers and magazines",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue),
              onPressed: () async {
                print('Get Started button pressed');
                await starterScreenProvider.setScreenPreference(1);
                Navigator.pushReplacementNamed(context, 'homeScreen');
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
