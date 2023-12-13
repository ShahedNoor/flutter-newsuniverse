import 'package:flutter/material.dart';
import 'package:newsuniverse/src/controller/news_controller.dart';
import 'package:newsuniverse/src/data/global_widgets/news_webview.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    final _newsList = NewsController().newsList;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: GridView.builder(
          itemCount: _newsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width >= 600 ? 3 : 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio:
                MediaQuery.of(context).size.width >= 600 ? 0.80 : 0.75,
          ),
          itemBuilder: (context, index) {
            return Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsWebView(
                            url: _newsList[index]["newsPaperLink"],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height:
                          MediaQuery.of(context).size.height <= 440 ? 300 : 230,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                _newsList[index]["newesPaperImage"]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.black,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: ListTile(
                              title: Text(
                                _newsList[index]["newspaperName"],
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                DateTime.now().toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: InkWell(
                                child: Icon(
                                  Icons.download_for_offline,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
