import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class InternationalNewspapersScreenGridView extends StatefulWidget {
  const InternationalNewspapersScreenGridView({super.key});

  @override
  State<InternationalNewspapersScreenGridView> createState() =>
      _InternationalNewspapersScreenGridViewState();
}

class _InternationalNewspapersScreenGridViewState
    extends State<InternationalNewspapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final internationalNewspapersProvider =
        Provider.of<NewsSource>(context, listen: false)
            .internationalNewspaperList;
    final favouriteDataProvider =
        Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: internationalNewspapersProvider.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: internationalNewspapersProvider[index]
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
                    image: AssetImage(internationalNewspapersProvider[index]
                        ['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          internationalNewspapersProvider[index]
                                  ['isFavourite'] =
                              !internationalNewspapersProvider[index]
                                  ['isFavourite'];

                          if (internationalNewspapersProvider[index]
                              ['isFavourite']) {
                            favouriteDataProvider.addToFavorite(
                                internationalNewspapersProvider[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                                    item['id'] ==
                                    internationalNewspapersProvider[index]
                                        ['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      internationalNewspapersProvider[index]['isFavourite']
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
