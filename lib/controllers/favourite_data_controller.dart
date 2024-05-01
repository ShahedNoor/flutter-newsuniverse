import 'package:flutter/material.dart';
import '../data/news_source.dart';

class FavoriteDataController extends ChangeNotifier {
  List favouriteItems = [];
  final newsSourceProvider = NewsSource();

  void addToFavorite(index) {
    if (!favouriteItems.contains(index)) {
      // If not, add the item to the list
      favouriteItems.add(index);
    }
    notifyListeners();
  }

  void removeFromFavourite(index) {
    favouriteItems.removeAt(index);
    notifyListeners();
  }
}
