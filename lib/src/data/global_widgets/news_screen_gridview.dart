import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class NewsScreenGridView extends StatefulWidget {
  const NewsScreenGridView({super.key});

  @override
  State<NewsScreenGridView> createState() => _NewsScreenGridViewState();
}

class _NewsScreenGridViewState extends State<NewsScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final newsList =
        Provider.of<NewsSource>(context, listen: false).banglaNewsPaperList;
    final favouriteDataProvider =
        Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: newsList[index]['newsPaperLink'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(newsList[index]['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          newsList[index]['isFavourite'] =
                              !newsList[index]['isFavourite'];

                          if (newsList[index]['isFavourite']) {
                            favouriteDataProvider
                                .addToFavorite(newsList[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                                    item['id'] ==
                                    newsList[index]['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      newsList[index]['isFavourite']
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
