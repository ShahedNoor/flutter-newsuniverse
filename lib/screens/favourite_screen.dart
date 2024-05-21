import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'news_webview_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  late Box<dynamic> box;
  bool isLoading = true;
  List<dynamic> favouriteNewsPapers = [];

  @override
  void initState() {
    super.initState();
    openBox();
  }

  Future<void> openBox() async {
    box = await Hive.openBox('newsDatabase');
    fetchFavourites();
  }

  void fetchFavourites() {
    List<dynamic> allFavourites = [];
    // Keys for different newspaper lists
    List<String> keys = [
      'banglaNewsPaperList',
      'banglaEpaperList',
      'onlineNewspaperList',
      'tvChannelList',
      'localNewspaperList',
      'internationalNewspaperList',
      'radioChannelList',
      'internationalTvChannelList',
      'indianNewspaperList',
      'magazineList',
    ]; // Add more keys if needed

    for (var key in keys) {
      List<dynamic> papers = box.get(key, defaultValue: []);
      allFavourites
          .addAll(papers.where((item) => item['isFavourite'] == true).toList());
    }

    setState(() {
      favouriteNewsPapers = allFavourites;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return favouriteNewsPapers.isEmpty
        ? const Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.heart_broken,
                      size: 65,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "No newspapers are currently saved in your favourites. Explore and pick your favourites to stay updated!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )),
          )
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 649 ? 3 : 2,
                childAspectRatio: 1.7),
            itemCount: favouriteNewsPapers.length,
            itemBuilder: (context, index) {
              var newspaper = favouriteNewsPapers[index];
              return buildNewspaperTile(context, newspaper, index);
            },
          );
  }

  Widget buildNewspaperTile(
      BuildContext context, dynamic newspaper, int index) {
    dynamic smallerThan330 = MediaQuery.sizeOf(context).width < 330;
    dynamic smallerThan435 = MediaQuery.sizeOf(context).width < 435;
    dynamic smallerThan445 = MediaQuery.sizeOf(context).width < 445;
    dynamic smallerThan650 = MediaQuery.sizeOf(context).width < 650;
    dynamic greaterThan649 = MediaQuery.sizeOf(context).width > 649;
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
                                : 1.2),
            child: IconButton(
              onPressed: () {
                updateFavouriteStatus(newspaper, index);
              },
              icon: const Icon(
                Icons.delete,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void updateFavouriteStatus(dynamic newspaper, int index) {
    setState(() {
      // Remove from favorites locally
      favouriteNewsPapers.removeAt(index);

      // Update in Hive database
      List<String> keys = [
        'banglaNewsPaperList',
        'banglaEpaperList',
        'onlineNewspaperList',
        'tvChannelList',
        'localNewspaperList',
        'internationalNewspaperList',
        'radioChannelList',
        'internationalTvChannelList',
        'indianNewspaperList',
        'magazineList',
      ];
      for (var key in keys) {
        List<dynamic> papers = box.get(key, defaultValue: []);
        int itemIndex = papers.indexWhere(
            (item) => item['newsPaperLink'] == newspaper['newsPaperLink']);
        if (itemIndex != -1) {
          papers[itemIndex]['isFavourite'] = false;
          box.put(key, papers);
          break; // Stop once found and updated
        }
      }
    });
  }
}
