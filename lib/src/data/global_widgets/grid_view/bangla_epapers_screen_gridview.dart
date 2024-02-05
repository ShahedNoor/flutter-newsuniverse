import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class BanglaEpapersScreenGridView extends StatefulWidget {
  const BanglaEpapersScreenGridView({super.key});

  @override
  State<BanglaEpapersScreenGridView> createState() => _BanglaEpapersScreenGridViewState();
}

class _BanglaEpapersScreenGridViewState extends State<BanglaEpapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final banglaEapersProvider =
        Provider.of<NewsSource>(context, listen: false).banglaEpaperList;
    final favouriteDataProvider =
    Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: banglaEapersProvider.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: banglaEapersProvider[index]['newsPaperLink'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(banglaEapersProvider[index]['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                            () {
                              banglaEapersProvider[index]['isFavourite'] =
                          !banglaEapersProvider[index]['isFavourite'];

                          if (banglaEapersProvider[index]['isFavourite']) {
                            favouriteDataProvider
                                .addToFavorite(banglaEapersProvider[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                            item['id'] ==
                                banglaEapersProvider[index]['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      banglaEapersProvider[index]['isFavourite']
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
