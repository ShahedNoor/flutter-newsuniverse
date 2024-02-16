import 'package:flutter/material.dart';
import 'package:newsuniverse/screens/news_webview_screen.dart';
import 'package:provider/provider.dart';
import '../../controllers/favourite_data_controller.dart';
import '../../utils/news_source.dart';

class BanglaNewspapersScreenGridView extends StatefulWidget {
  const BanglaNewspapersScreenGridView({super.key});

  @override
  State<BanglaNewspapersScreenGridView> createState() =>
      _BanglaNewspapersScreenGridViewState();
}

class _BanglaNewspapersScreenGridViewState
    extends State<BanglaNewspapersScreenGridView> {
  @override
  Widget build(BuildContext context) {
    // Screen size for responsive design
    dynamic smallerThan330 = MediaQuery.sizeOf(context).width < 330;
    dynamic smallerThan435 = MediaQuery.sizeOf(context).width < 435;
    dynamic smallerThan445 = MediaQuery.sizeOf(context).width < 445;
    dynamic smallerThan650 = MediaQuery.sizeOf(context).width < 650;
    dynamic greaterThan649 = MediaQuery.sizeOf(context).width > 649;

    final banglaNewspapersProvider =
        Provider.of<NewsSource>(context, listen: false).banglaNewsPaperList;
    final favouriteDataProvider =
        Provider.of<FavoriteDataController>(context, listen: false);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: greaterThan649 ? 3 : 2, childAspectRatio: 1.7),
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
                  image: AssetImage(
                      banglaNewspapersProvider[index]['newsPaperImage']),
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
                                  : 1.2,
                ),
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
                            favouriteDataProvider.removeFromFavourite(favIndex);
                          }
                        }
                      },
                    );
                  },
                  icon: Icon(
                    banglaNewspapersProvider[index]['isFavourite']
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: smallerThan330 ? 18 : 24,
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
