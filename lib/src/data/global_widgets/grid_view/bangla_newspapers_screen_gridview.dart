import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class BanglaNewspapersScreenGridView extends StatefulWidget {
  const BanglaNewspapersScreenGridView({super.key});

  @override
  State<BanglaNewspapersScreenGridView> createState() => _BanglaNewspapersScreenGridViewState();
}

class _BanglaNewspapersScreenGridViewState extends State<BanglaNewspapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final banglaNewspapersProvider =
        Provider.of<NewsSource>(context, listen: false).banglaNewsPaperList;
    final favouriteDataProvider =
        Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: banglaNewspapersProvider.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: banglaNewspapersProvider[index]['newsPaperLink'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(banglaNewspapersProvider[index]['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          banglaNewspapersProvider[index]['isFavourite'] =
                              !banglaNewspapersProvider[index]['isFavourite'];

                          if (banglaNewspapersProvider[index]['isFavourite']) {
                            favouriteDataProvider
                                .addToFavorite(banglaNewspapersProvider[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                                    item['id'] ==
                                    banglaNewspapersProvider[index]['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      banglaNewspapersProvider[index]['isFavourite']
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
