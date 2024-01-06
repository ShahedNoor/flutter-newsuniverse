import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/favorite_data_controller.dart';
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
    final favoriteDataProvider =
        Provider.of<FavoriteController>(context, listen: false);
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
                      favoriteDataProvider.addToFavorite(newsList[index]);
                    },
                    icon: const Icon(Icons.favorite_border),
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
