import 'package:hive_flutter/hive_flutter.dart';
import 'package:newsuniverse/data/news_source.dart';

class NewsDatabase {
  var myBox = Hive.box('newsDatabase');

  // News source instance
  NewsSource ns = NewsSource();

  void createInitialData() {
    if (myBox.get('banglaNewsPaperList') == null &&
        myBox.get('banglaEpaperList') == null &&
        myBox.get('onlineNewspaperList') == null &&
        myBox.get('tvChannelList') == null &&
        myBox.get('localNewspaperList') == null &&
        myBox.get('internationalNewspaperList') == null &&
        myBox.get('radioChannelList') == null &&
        myBox.get('internationalTvChannelList') == null &&
        myBox.get('indianNewspaperList') == null &&
        myBox.get('magazineList') == null) {
      myBox.putAll({
        'banglaNewsPaperList': ns.banglaNewsPaperList,
        'banglaEpaperList': ns.banglaEpaperList,
        'onlineNewspaperList': ns.onlineNewspaperList,
        'tvChannelList': ns.tvChannelList,
        'localNewspaperList': ns.localNewspaperList,
        'internationalNewspaperList': ns.internationalNewspaperList,
        'radioChannelList': ns.radioChannelList,
        'internationalTvChannelList': ns.internationalTvChannelList,
        'indianNewspaperList': ns.indianNewspaperList,
        'magazineList': ns.magazineList,
      });
    } else {}
  }
}
