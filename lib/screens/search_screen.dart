import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:search_page/search_page.dart';
import 'package:newsuniverse/screens/news_webview_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late Box<dynamic> box;
  bool isLoading = true;
  List<dynamic> allNewsPapers = [];

  @override
  void initState() {
    super.initState();
    openBox();
  }

  Future<void> openBox() async {
    box = await Hive.openBox('newsDatabase');
    fetchAllNewsPapers();
  }

  void fetchAllNewsPapers() {
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
    ]; // Add more keys as needed
    List<dynamic> allItems = [];

    for (var key in keys) {
      final List<dynamic> newspapers = box.get(key, defaultValue: []);
      allItems.addAll(newspapers);
    }

    setState(() {
      allNewsPapers = allItems;
      isLoading = false;
    });
  }

  void toggleFavorite(BuildContext context, dynamic newspaper) {
    setState(() {
      newspaper['isFavourite'] = !newspaper['isFavourite'];

      // Update the item in the Hive box across all relevant lists
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
        final List<dynamic> list = box.get(key, defaultValue: []);
        final int idx = list.indexWhere(
            (item) => item['newsPaperLink'] == newspaper['newsPaperLink']);
        if (idx != -1) {
          list[idx] = newspaper;
          box.put(key, list);
        }
      }

      // Show snack bar message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            newspaper['isFavourite']
                ? 'Added to favorites'
                : 'Removed from favorites',
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Newspapers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(
              context: context,
              delegate: SearchPage<dynamic>(
                items: allNewsPapers,
                searchLabel: 'Search Newspapers',
                suggestion: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          size: 65,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Filter newspapers by name, description, etc.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                failure: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off_outlined,
                          size: 65,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "No newspapers found!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                filter: (newspaper) => [
                  newspaper['newsPaperName'],
                  newspaper['newsPaperDescription'],
                ],
                builder: (newspaper) => buildNewspaperTile(context, newspaper),
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 649 ? 3 : 2,
          childAspectRatio: 1.7,
        ),
        itemCount: allNewsPapers.length,
        itemBuilder: (context, index) {
          return buildNewspaperTile(context, allNewsPapers[index]);
        },
      ),
    );
  }

  Widget buildNewspaperTile(BuildContext context, dynamic newspaper) {
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
              onPressed: () => toggleFavorite(context, newspaper),
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
