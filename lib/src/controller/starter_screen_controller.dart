import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StarterScreenController extends ChangeNotifier {
  Future<void> setScreenPreference(int state) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentScreenState', state);
    // print('Screen preference set: $state');
    notifyListeners();
  }

  Future<int> getCurrentScreenState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int currentState = prefs.getInt('currentScreenState') ?? 0;
    // print('Current screen state: $currentState');
    return currentState;
  }
}