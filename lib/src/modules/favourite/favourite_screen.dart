import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:provider/provider.dart';

import '../../data/utils/news_source.dart';
import '../webview/news_webview_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteItemProvider =
        Provider.of<FavoriteDataController>(context, listen: false);
    final newsList =
        Provider.of<NewsSource>(context, listen: false).banglaNewsPaperList;
    return favouriteItemProvider.favouriteItems.isEmpty
        ? const Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.heart_broken,
                      size: 65,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "No newspapers are currently saved in your favourites. Explore and pick your favourites to stay updated!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )),
          )
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.7),
            itemCount: favouriteItemProvider.favouriteItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsWebView(
                          url: favouriteItemProvider.favouriteItems[index]
                              ['newsPaperLink'],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                      image: DecorationImage(
                        image: AssetImage(favouriteItemProvider
                            .favouriteItems[index]['newsPaperImage']),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: const Alignment(1.1, 1.2),
                      child: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              int originalIndex = newsList.indexWhere((item) =>
                                  item['id'] ==
                                  favouriteItemProvider.favouriteItems[index]
                                      ['id']);
                              if (index != -1) {
                                newsList[originalIndex]['isFavourite'] = false;
                              }
                              favouriteItemProvider.removeFromFavourite(index);
                            },
                          );
                        },
                        icon: const Icon(Icons.delete_outline),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
  }
}
