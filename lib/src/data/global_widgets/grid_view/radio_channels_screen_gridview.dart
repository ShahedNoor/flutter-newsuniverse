import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favourite_data_controller.dart';
import 'package:newsuniverse/src/data/utils/news_source.dart';
import 'package:newsuniverse/src/modules/webview/news_webview_screen.dart';
import 'package:provider/provider.dart';

class RadioChannelsScreenGridView extends StatefulWidget {
  const RadioChannelsScreenGridView({super.key});

  @override
  State<RadioChannelsScreenGridView> createState() => _RadioChannelsScreenGridViewState();
}

class _RadioChannelsScreenGridViewState extends State<RadioChannelsScreenGridView> {
  @override
  Widget build(BuildContext context) {
    final radioChannelsProvider =
        Provider.of<NewsSource>(context, listen: false).radioChannelList;
    final favouriteDataProvider =
    Provider.of<FavoriteDataController>(context, listen: false);
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.7),
        itemCount: radioChannelsProvider.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsWebView(
                      url: radioChannelsProvider[index]['newsPaperLink'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(radioChannelsProvider[index]['newsPaperImage']),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: const Alignment(1.1, 1.2),
                  child: IconButton(
                    onPressed: () {
                      setState(
                            () {
                          radioChannelsProvider[index]['isFavourite'] =
                          !radioChannelsProvider[index]['isFavourite'];

                          if (radioChannelsProvider[index]['isFavourite']) {
                            favouriteDataProvider
                                .addToFavorite(radioChannelsProvider[index]);
                          } else {
                            int favIndex = favouriteDataProvider.favouriteItems
                                .indexWhere((item) =>
                            item['id'] ==
                                radioChannelsProvider[index]['id']);
                            if (favIndex != -1) {
                              favouriteDataProvider
                                  .removeFromFavourite(favIndex);
                            }
                          }
                        },
                      );
                    },
                    icon: Icon(
                      radioChannelsProvider[index]['isFavourite']
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
