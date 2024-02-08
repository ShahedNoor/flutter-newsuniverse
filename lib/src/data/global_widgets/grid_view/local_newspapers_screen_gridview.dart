import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class LocalNewspapersScreenGridView extends StatefulWidget {
  const LocalNewspapersScreenGridView({super.key});

  @override
  State<LocalNewspapersScreenGridView> createState() => _LocalNewspapersScreenGridViewState();
}

class _LocalNewspapersScreenGridViewState extends State<LocalNewspapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final localNewspapersProvider =
        Provider.of<NewsSource>(context, listen: false).localNewspaperList;
    final favouriteDataProvider =
    Provider.of<FavoriteDataController>(context, listen: false);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.7),
      itemCount: localNewspapersProvider.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsWebView(
                    url: localNewspapersProvider[index]['newsPaperLink'],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                image: DecorationImage(
                  image: AssetImage(localNewspapersProvider[index]['newsPaperImage']),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: const Alignment(1.1, 1.2),
                child: IconButton(
                  onPressed: () {
                    setState(
                          () {
                        localNewspapersProvider[index]['isFavourite'] =
                        !localNewspapersProvider[index]['isFavourite'];

                        if (localNewspapersProvider[index]['isFavourite']) {
                          favouriteDataProvider
                              .addToFavorite(localNewspapersProvider[index]);
                        } else {
                          int favIndex = favouriteDataProvider.favouriteItems
                              .indexWhere((item) =>
                          item['id'] ==
                              localNewspapersProvider[index]['id']);
                          if (favIndex != -1) {
                            favouriteDataProvider
                                .removeFromFavourite(favIndex);
                          }
                        }
                      },
                    );
                  },
                  icon: Icon(
                    localNewspapersProvider[index]['isFavourite']
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
