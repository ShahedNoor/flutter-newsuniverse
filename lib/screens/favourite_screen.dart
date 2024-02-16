import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/favourite_data_controller.dart';
import '../utils/news_source.dart';
import 'news_webview_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // Screen size for responsive design
    dynamic smallerThan330 = MediaQuery.sizeOf(context).width < 330;
    dynamic smallerThan435 = MediaQuery.sizeOf(context).width < 435;
    dynamic smallerThan445 = MediaQuery.sizeOf(context).width < 445;
    dynamic smallerThan650 = MediaQuery.sizeOf(context).width < 650;
    dynamic greaterThan649 = MediaQuery.sizeOf(context).width > 649;

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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: greaterThan649 ? 3 : 2, childAspectRatio: 1.7),
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
                      alignment: Alignment(
                          smallerThan330
                              ? 1.1
                              : smallerThan445
                                  ? 1.0
                                  : smallerThan650
                                      ? 0.9
                                      : 1.0,
                          smallerThan330
                              ? 1.4
                              : smallerThan435
                                  ? 1.1
                                  : smallerThan650
                                      ? 0.9
                                      : greaterThan649
                                          ? 1.0
                                          : 1.2),
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
