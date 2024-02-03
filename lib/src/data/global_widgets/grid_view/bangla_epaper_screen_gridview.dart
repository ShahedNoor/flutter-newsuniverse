import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class BanglaEpaperScreenGridView extends StatefulWidget {
  const BanglaEpaperScreenGridView({super.key});

  @override
  State<BanglaEpaperScreenGridView> createState() => _BanglaEpaperScreenGridViewState();
}

class _BanglaEpaperScreenGridViewState extends State<BanglaEpaperScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final banglaEaperProvider =
        Provider.of<NewsSource>(context, listen: false).banglaEpaperList;
    final favouriteDataProvider =
    Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: banglaEaperProvider.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: banglaEaperProvider[index]['newsPaperLink'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(banglaEaperProvider[index]['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                            () {
                              banglaEaperProvider[index]['isFavourite'] =
                          !banglaEaperProvider[index]['isFavourite'];

                          if (banglaEaperProvider[index]['isFavourite']) {
                            favouriteDataProvider
                                .addToFavorite(banglaEaperProvider[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                            item['id'] ==
                                banglaEaperProvider[index]['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      banglaEaperProvider[index]['isFavourite']
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
