import 'package:flutter/material.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';

class FavoriteController extends ChangeNotifier {
  List favoriteItems = [];
  final newsSourceProvider = NewsSource();

  void addToFavorite(index) {
    if (!favoriteItems.contains(index)) {
      // If not, add the item to the list
      favoriteItems.add(index);
      print(favoriteItems);
    }
  }
}
