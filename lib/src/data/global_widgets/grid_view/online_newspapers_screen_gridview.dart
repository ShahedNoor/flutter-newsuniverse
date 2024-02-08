import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class OnlineNewspapersScreenGridView extends StatefulWidget {
  const OnlineNewspapersScreenGridView({super.key});

  @override
  State<OnlineNewspapersScreenGridView> createState() => _OnlineNewspapersScreenGridViewState();
}

class _OnlineNewspapersScreenGridViewState extends State<OnlineNewspapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final onlineNewspapersProvider =
        Provider.of<NewsSource>(context, listen: false).onlineNewspaperList;
    final favouriteDataProvider =
    Provider.of<FavoriteDataController>(context, listen: false);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.7),
      itemCount: onlineNewspapersProvider.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsWebView(
                    url: onlineNewspapersProvider[index]['newsPaperLink'],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                image: DecorationImage(
                  image: AssetImage(onlineNewspapersProvider[index]['newsPaperImage']),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: const Alignment(1.1, 1.2),
                child: IconButton(
                  onPressed: () {
                    setState(
                          () {
                        onlineNewspapersProvider[index]['isFavourite'] =
                        !onlineNewspapersProvider[index]['isFavourite'];

                        if (onlineNewspapersProvider[index]['isFavourite']) {
                          favouriteDataProvider
                              .addToFavorite(onlineNewspapersProvider[index]);
                        } else {
                          int favIndex = favouriteDataProvider.favouriteItems
                              .indexWhere((item) =>
                          item['id'] ==
                              onlineNewspapersProvider[index]['id']);
                          if (favIndex != -1) {
                            favouriteDataProvider
                                .removeFromFavourite(favIndex);
                          }
                        }
                      },
                    );
                  },
                  icon: Icon(
                    onlineNewspapersProvider[index]['isFavourite']
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
