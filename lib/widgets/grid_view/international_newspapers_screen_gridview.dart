import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:newsuniverse/screens/news_webview_screen.dart';

class InternationalNewspapersScreenGridView extends StatefulWidget {
  const InternationalNewspapersScreenGridView({super.key});

  @override
  State<InternationalNewspapersScreenGridView> createState() =>
      _InternationalNewspapersScreenGridViewState();
}

class _InternationalNewspapersScreenGridViewState
    extends State<InternationalNewspapersScreenGridView> {
  late Box<dynamic> box;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    openBox();
  }

  Future<void> openBox() async {
    box = await Hive.openBox('newsDatabase');
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      );
    }

    List banglaNewspapersProvider =
        box.get('internationalNewspaperList', defaultValue: []);

    return ValueListenableBuilder(
      valueListenable: box.listenable(),
      builder: (context, Box<dynamic> box, _) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 649 ? 3 : 2,
            childAspectRatio: 1.7,
          ),
          itemCount: banglaNewspapersProvider.length,
          itemBuilder: (context, index) {
            return buildNewspaperTile(context, banglaNewspapersProvider, index);
          },
        );
      },
    );
  }

  Widget buildNewspaperTile(
      BuildContext context, List<dynamic> newspapers, int index) {
    final newspaper = newspapers[index];
    bool smallerThan330 = MediaQuery.of(context).size.width < 330;
    bool smallerThan435 = MediaQuery.of(context).size.width < 435;
    bool smallerThan445 = MediaQuery.of(context).size.width < 445;
    bool smallerThan650 = MediaQuery.of(context).size.width < 650;
    bool greaterThan649 = MediaQuery.of(context).size.width > 649;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  NewsWebView(url: newspaper['newsPaperLink']),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            image: DecorationImage(
              image: AssetImage(newspaper['newsPaperImage']),
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
                setState(() {
                  newspaper['isFavourite'] = !newspaper['isFavourite'];
                  box.put('internationalNewspaperList', newspapers);
                });
              },
              icon: Icon(
                newspaper['isFavourite']
                    ? Icons.favorite
                    : Icons.favorite_border,
                size: smallerThan330 ? 18 : 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
