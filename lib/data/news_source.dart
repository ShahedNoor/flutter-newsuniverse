import 'package:flutter/material.dart';

class NewsSource extends ChangeNotifier {
  dynamic banglaNewsPaperList = [
    {
      "id": 0,
      "newsPaperName": "prothom alo",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/prothom_alo.jpg",
      "newsPaperLink": "https://www.prothomalo.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "ittefaq",
      "newsPaperImage": "assets/images/bangla_newspapers_images/ittefaq.jpg",
      "newsPaperLink": "https://www.ittefaq.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "jugantor",
      "newsPaperImage": "assets/images/bangla_newspapers_images/jugantor.jpg",
      "newsPaperLink": "https://www.jugantor.com/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "kalerkantho",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/kalerkantho.jpg",
      "newsPaperLink": "https://www.kalerkantho.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "samakal",
      "newsPaperImage": "assets/images/bangla_newspapers_images/samakal.jpg",
      "newsPaperLink": "https://samakal.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "dailyjanakantha",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/dailyjanakantha.jpg",
      "newsPaperLink": "https://www.dailyjanakantha.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "bd pratidin",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/bd_pratidin.jpg",
      "newsPaperLink": "https://www.bd-pratidin.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "nayadiganta",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/nayadiganta.jpg",
      "newsPaperLink": "https://www.dailynayadiganta.com/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "jjdin",
      "newsPaperImage": "assets/images/bangla_newspapers_images/jjdin.jpg",
      "newsPaperLink": "https://www.jaijaidinbd.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "amar sangbad",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/amar_sangbad.jpg",
      "newsPaperLink": "https://www.amarsangbad.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "protidinersangbad",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/protidinersangbad.jpg",
      "newsPaperLink": "https://www.protidinersangbad.com/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "dailysangram",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/dailysangram.jpg",
      "newsPaperLink": "https://dailysangram.com/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "mzamin",
      "newsPaperImage": "assets/images/bangla_newspapers_images/mzamin.jpg",
      "newsPaperLink": "https://mzamin.com/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "bonikbarta",
      "newsPaperImage": "assets/images/bangla_newspapers_images/bonikbarta.jpg",
      "newsPaperLink": "https://bonikbarta.net/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "bhorerkagoj",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/bhorerkagoj.jpg",
      "newsPaperLink": "https://bhorerkagoj.com/",
      "isFavourite": false,
    },
    {
      "id": 15,
      "newsPaperName": "the daily inqilab",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/the_daily_inqilab.png",
      "newsPaperLink": "https://dailyinqilab.com/",
      "isFavourite": false,
    },
    {
      "id": 16,
      "newsPaperName": "manobkantha",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/manobkantha.jpg",
      "newsPaperLink": "https://www.manobkantha.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 17,
      "newsPaperName": "bdjournal",
      "newsPaperImage": "assets/images/bangla_newspapers_images/bdjournal.jpg",
      "newsPaperLink": "https://www.bd-journal.com/",
      "isFavourite": false,
    },
    {
      "id": 18,
      "newsPaperName": "alokitobangladesh",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/alokitobangladesh.jpg",
      "newsPaperLink": "https://www.alokitobangladesh.com/",
      "isFavourite": false,
    },
    {
      "id": 19,
      "newsPaperName": "sorejominbarta",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/sorejominbarta.jpg",
      "newsPaperLink": "https://sorejominbarta.com/",
      "isFavourite": false,
    },
    {
      "id": 20,
      "newsPaperName": "shomoyeralo",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/shomoyeralo.jpg",
      "newsPaperLink": "https://www.shomoyeralo.com/",
      "isFavourite": false,
    },
    {
      "id": 21,
      "newsPaperName": "kalbela",
      "newsPaperImage": "assets/images/bangla_newspapers_images/kalbela.png",
      "newsPaperLink": "https://www.kalbela.com/",
      "isFavourite": false,
    },
    {
      "id": 22,
      "newsPaperName": "ajkalerkhobor",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/ajkalerkhobor.jpg",
      "newsPaperLink": "https://ajkalerkhobor.com/",
      "isFavourite": false,
    },
    {
      "id": 23,
      "newsPaperName": "dainikbangla",
      "newsPaperImage":
          "assets/images/bangla_newspapers_images/dainik_bangla.jpg",
      "newsPaperLink": "https://www.dainikbangla.com.bd/",
      "isFavourite": false,
    },
  ];

  dynamic banglaEpaperList = [
    {
      "id": 0,
      "newsPaperName": "prothom alo",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_prothom_alo.png",
      "newsPaperLink": "https://epaper.prothomalo.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "epratidin",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_pratidin.jpg",
      "newsPaperLink": "https://www.ebdpratidin.com/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "jugantor",
      "newsPaperImage":
          "assets/images/bangla_epapers_images/epaper_jugantor.jpg",
      "newsPaperLink": "https://epaper.jugantor.com/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "samakal",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_samakal.png",
      "newsPaperLink": "https://epaper.samakal.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "janakontho",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_janakontho.png",
      "newsPaperLink": "https://epaper.dailyjanakantha.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "bonikbarta",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_bonikbarta.jpg",
      "newsPaperLink": "https://epaper.bonikbarta.net/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "nayadiganta",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_nayadiganta.jpg",
      "newsPaperLink": "https://enayadiganta.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "ittefaq",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_ittefaq.png",
      "newsPaperLink": "https://epaper.ittefaq.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "kalerkantho",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_kalerkantho.png",
      "newsPaperLink": "https://www.ekalerkantho.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "amadershomoy",
      "newsPaperImage":
          "assets/images/bangla_epapers_images/e_amadershomoy.png",
      "newsPaperLink":
          "https://epaper.dainikamadershomoy.com/2024/01/09/page-01",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "jjdin",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_jjdin.jpg",
      "newsPaperLink": "https://ejjdin.com/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "inqilab",
      "newsPaperImage": "assets/images/bangla_epapers_images/e_inqilab.png",
      "newsPaperLink": "https://dailyinqilab.com/epaper/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "sharebiz",
      "newsPaperImage": "assets/images/bangla_epapers_images/esharebiz.jpg",
      "newsPaperLink": "https://esharebiz.net/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "bhorer kagoj",
      "newsPaperImage":
          "assets/images/bangla_epapers_images/e_bhorer_kagoj.jpg",
      "newsPaperLink": "https://ebhorerkagoj.com/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "bangladeshtoday",
      "newsPaperImage":
          "assets/images/bangla_epapers_images/e_bangladeshtoday.jpg",
      "newsPaperLink": "https://epaper.thebangladeshtoday.com/",
      "isFavourite": false,
    },
  ];

  dynamic onlineNewspaperList = [
    {
      "id": 0,
      "newsPaperName": "bdnews24",
      "newsPaperImage": "assets/images/online_newspapers_images/bdnews24.jpg",
      "newsPaperLink": "https://bangla.bdnews24.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "banglanews24",
      "newsPaperImage":
          "assets/images/online_newspapers_images/banglanews24.jpg",
      "newsPaperLink": "https://www.banglanews24.com/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "jagonews24",
      "newsPaperImage": "assets/images/online_newspapers_images/jagonews24.jpg",
      "newsPaperLink": "https://www.jagonews24.com/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "dainikamadershomoy",
      "newsPaperImage":
          "assets/images/online_newspapers_images/amadershomoys.jpg",
      "newsPaperLink": "https://dainikamadershomoy.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "risingbd",
      "newsPaperImage": "assets/images/online_newspapers_images/risingbd.jpg",
      "newsPaperLink": "https://www.risingbd.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "daily bangladesh",
      "newsPaperImage":
          "assets/images/online_newspapers_images/dailybangladesh.png",
      "newsPaperLink": "https://www.daily-bangladesh.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "gonews24",
      "newsPaperImage": "assets/images/online_newspapers_images/gonews24.jpg",
      "newsPaperLink": "https://www.gonews24.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "dhakapost",
      "newsPaperImage": "assets/images/online_newspapers_images/dhakapost.jpg",
      "newsPaperLink": "https://www.dhakapost.com/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "banglatribune",
      "newsPaperImage":
          "assets/images/online_newspapers_images/banglatribune.jpg",
      "newsPaperLink": "https://www.banglatribune.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "banglainsider",
      "newsPaperImage":
          "assets/images/online_newspapers_images/banglainsider.jpg",
      "newsPaperLink": "https://www.banglainsider.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "unb",
      "newsPaperImage": "assets/images/online_newspapers_images/unb.jpg",
      "newsPaperLink": "https://unb.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "bssnews",
      "newsPaperImage": "assets/images/online_newspapers_images/bssnews.jpg",
      "newsPaperLink": "https://www.bssnews.net/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "barta24",
      "newsPaperImage": "assets/images/online_newspapers_images/barta24.jpg",
      "newsPaperLink": "https://barta24.com/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "sarabangla",
      "newsPaperImage": "assets/images/online_newspapers_images/sarabangla.png",
      "newsPaperLink": "https://sarabangla.net/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "thedhakatimes",
      "newsPaperImage": "assets/images/online_newspapers_images/dhakatimes.jpg",
      "newsPaperLink": "https://thedhakatimes.com/",
      "isFavourite": false,
    },
    {
      "id": 15,
      "newsPaperName": "dmpnews",
      "newsPaperImage": "assets/images/online_newspapers_images/dmpnews.png",
      "newsPaperLink": "https://dmpnews.org/",
      "isFavourite": false,
    },
    {
      "id": 16,
      "newsPaperName": "thereport24",
      "newsPaperImage":
          "assets/images/online_newspapers_images/thereport24.png",
      "newsPaperLink": "https://bangla.thereport24.com/",
      "isFavourite": false,
    },
    {
      "id": 17,
      "newsPaperName": "somoyerkonthosor",
      "newsPaperImage":
          "assets/images/online_newspapers_images/somoyerkonthosor.jpg",
      "newsPaperLink": "https://somoyerkonthosor.com/",
      "isFavourite": false,
    },
    {
      "id": 18,
      "newsPaperName": "arthosuchak",
      "newsPaperImage":
          "assets/images/online_newspapers_images/arthosuchak.jpg",
      "newsPaperLink": "https://www.arthosuchak.com/",
      "isFavourite": false,
    },
    {
      "id": 19,
      "newsPaperName": "sharenews24",
      "newsPaperImage":
          "assets/images/online_newspapers_images/sharenews24.jpg",
      "newsPaperLink": "https://www.sharenews24.com/",
      "isFavourite": false,
    },
    {
      "id": 20,
      "newsPaperName": "sunbd24",
      "newsPaperImage": "assets/images/online_newspapers_images/sunbd24.png",
      "newsPaperLink": "https://sunbd24.com/",
      "isFavourite": false,
    },
    {
      "id": 21,
      "newsPaperName": "orthosongbad",
      "newsPaperImage":
          "assets/images/online_newspapers_images/orthosongbad.jpg",
      "newsPaperLink": "https://orthosongbad.com/",
      "isFavourite": false,
    },
    {
      "id": 22,
      "newsPaperName": "thedhakapost",
      "newsPaperImage":
          "assets/images/online_newspapers_images/thedhakapost.jpg",
      "newsPaperLink": "https://thedhakapost.com/",
      "isFavourite": false,
    },
  ];

  dynamic tvChannelList = [
    {
      "id": 0,
      "newsPaperName": "channelionline",
      "newsPaperImage": "assets/images/tv_channels_images/channel_i_tv.jpg",
      "newsPaperLink": "https://www.channelionline.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "itvbd",
      "newsPaperImage": "assets/images/tv_channels_images/independent24.jpg",
      "newsPaperLink": "https://www.itvbd.com/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "somoynews",
      "newsPaperImage": "assets/images/tv_channels_images/somoynews.jpg",
      "newsPaperLink": "https://www.somoynews.tv/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "ntvbd",
      "newsPaperImage": "assets/images/tv_channels_images/ntvbd.jpg",
      "newsPaperLink": "https://www.ntvbd.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "channel24bd",
      "newsPaperImage": "assets/images/tv_channels_images/channel24bd.jpg",
      "newsPaperLink": "https://www.channel24bd.tv/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "rtvonline",
      "newsPaperImage": "assets/images/tv_channels_images/rtvonline.jpg",
      "newsPaperLink": "https://www.rtvonline.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "ekushey tv",
      "newsPaperImage": "assets/images/tv_channels_images/ekushey_tv.jpg",
      "newsPaperLink": "https://ekushey-tv.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "atnbangla",
      "newsPaperImage": "assets/images/tv_channels_images/atnbangla_tv.jpg",
      "newsPaperLink": "https://www.atnbangla.tv/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "jamuna tv",
      "newsPaperImage": "assets/images/tv_channels_images/jamunatelevision.jpg",
      "newsPaperLink": "https://jamuna.tv/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "satv",
      "newsPaperImage": "assets/images/tv_channels_images/satv_tv.jpg",
      "newsPaperLink": "https://www.satv.tv/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "desh tv",
      "newsPaperImage": "assets/images/tv_channels_images/desh_tv.jpg",
      "newsPaperLink": "https://www.desh.tv/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "maasranga",
      "newsPaperImage": "assets/images/tv_channels_images/maasranga_tv.jpg",
      "newsPaperLink": "https://maasranga.tv/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "bvnews24",
      "newsPaperImage": "assets/images/tv_channels_images/banglavision_tv.jpg",
      "newsPaperLink": "https://www.bvnews24.com/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "ekattor",
      "newsPaperImage": "assets/images/tv_channels_images/ekattor_tv.jpg",
      "newsPaperLink": "https://ekattor.tv/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "atnnewstv",
      "newsPaperImage": "assets/images/tv_channels_images/atnnewstv.jpg",
      "newsPaperLink": "https://www.atnnewstv.com/",
      "isFavourite": false,
    },
    {
      "id": 15,
      "newsPaperName": "mytvbd",
      "newsPaperImage": "assets/images/tv_channels_images/mytvbd_tv.jpg",
      "newsPaperLink": "https://mytvbd.tv/",
      "isFavourite": false,
    },
    {
      "id": 16,
      "newsPaperName": "boishakhionline",
      "newsPaperImage": "assets/images/tv_channels_images/boishakhi_tv.jpg",
      "newsPaperLink": "https://boishakhionline.com/",
      "isFavourite": false,
    },
    {
      "id": 17,
      "newsPaperName": "mohona",
      "newsPaperImage": "assets/images/tv_channels_images/mohonatv.jpg",
      "newsPaperLink": "https://mohona.tv/",
      "isFavourite": false,
    },
    {
      "id": 18,
      "newsPaperName": "gazitv",
      "newsPaperImage": "assets/images/tv_channels_images/gazitv.jpg",
      "newsPaperLink": "https://gazitv.com/",
      "isFavourite": false,
    },
    {
      "id": 19,
      "newsPaperName": "btv",
      "newsPaperImage": "assets/images/tv_channels_images/btv_gov_bd.jpg",
      "newsPaperLink": "https://btv.gov.bd/",
      "isFavourite": false,
    },
    {
      "id": 20,
      "newsPaperName": "gaanbangla",
      "newsPaperImage": "assets/images/tv_channels_images/gaanbangla_tv.jpg",
      "newsPaperLink": "https://gaanbangla.tv/",
      "isFavourite": false,
    },
  ];

  dynamic localNewspaperList = [
    {
      "id": 0,
      "newsPaperName": "dainikazadi",
      "newsPaperImage": "assets/images/local_newspapers_images/dainikazadi.png",
      "newsPaperLink": "https://dainikazadi.net/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "dainikpurbokone",
      "newsPaperImage":
          "assets/images/local_newspapers_images/dainikpurbokone.png",
      "newsPaperLink": "https://dainikpurbokone.net/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "dailyamadercomilla",
      "newsPaperImage":
          "assets/images/local_newspapers_images/dailyamadercomilla.png",
      "newsPaperLink": "https://www.dailyamadercomilla.com/beta/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "purbanchal",
      "newsPaperImage": "assets/images/local_newspapers_images/purbanchal.png",
      "newsPaperLink": "https://purbanchal.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "coxsbazarnews",
      "newsPaperImage":
          "assets/images/local_newspapers_images/coxsbazarnews.png",
      "newsPaperLink": "https://www.coxsbazarnews.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "ukhiyanews",
      "newsPaperImage": "assets/images/local_newspapers_images/ukhiyanews.jpg",
      "newsPaperLink": "https://www.ukhiyanews.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "khulnanews",
      "newsPaperImage": "assets/images/local_newspapers_images/khulnanews.png",
      "newsPaperLink": "https://khulnanews.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "mathabhanga",
      "newsPaperImage": "assets/images/local_newspapers_images/mathabhanga.png",
      "newsPaperLink": "https://www.mathabhanga.com/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "rajshahinews24",
      "newsPaperImage":
          "assets/images/local_newspapers_images/rajshahinews24.png",
      "newsPaperLink": "https://rajshahinews24.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "chattogramnews",
      "newsPaperImage":
          "assets/images/local_newspapers_images/chattagramnews.jpg",
      "newsPaperLink": "https://chattogramnews.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "dailykaratoa",
      "newsPaperImage": "assets/images/local_newspapers_images/karatoa.jpg",
      "newsPaperLink": "https://www.dailykaratoa.com/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "dainiksylhet",
      "newsPaperImage":
          "assets/images/local_newspapers_images/dainiksylhet.jpg",
      "newsPaperLink": "https://dainiksylhet.com/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "dailycoxsbazar",
      "newsPaperImage":
          "assets/images/local_newspapers_images/dailycoxsbazar.jpg",
      "newsPaperLink": "https://www.dailycoxsbazar.com/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "euttorpurbo",
      "newsPaperImage": "assets/images/local_newspapers_images/uttorpurbo.jpg",
      "newsPaperLink": "https://euttorpurbo.com/paper/index/2024-02-05",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "ajkerjamalpur",
      "newsPaperImage":
          "assets/images/local_newspapers_images/ajkerjamalpur.jpg",
      "newsPaperLink": "https://ajkerjamalpur.com/",
      "isFavourite": false,
    },
    {
      "id": 15,
      "newsPaperName": "amaderbarisal",
      "newsPaperImage":
          "assets/images/local_newspapers_images/amaderbarisal.jpg",
      "newsPaperLink": "https://www.amaderbarisal.com/",
      "isFavourite": false,
    },
    {
      "id": 16,
      "newsPaperName": "surmatimes",
      "newsPaperImage": "assets/images/local_newspapers_images/surmatimes.jpg",
      "newsPaperLink": "https://surmatimes.com/",
      "isFavourite": false,
    },
    {
      "id": 17,
      "newsPaperName": "dailysylhet",
      "newsPaperImage": "assets/images/local_newspapers_images/dailysylhet.jpg",
      "newsPaperLink": "https://dailysylhet.com/",
      "isFavourite": false,
    },
    {
      "id": 18,
      "newsPaperName": "chandpurtimes",
      "newsPaperImage":
          "assets/images/local_newspapers_images/chandpurtimes.jpg",
      "newsPaperLink": "https://chandpurtimes.com/",
      "isFavourite": false,
    },
    {
      "id": 19,
      "newsPaperName": "bograsangbad",
      "newsPaperImage":
          "assets/images/local_newspapers_images/bograsangbad.jpg",
      "newsPaperLink": "https://bograsangbad.com/",
      "isFavourite": false,
    },
    {
      "id": 20,
      "newsPaperName": "sylhetexpress",
      "newsPaperImage":
          "assets/images/local_newspapers_images/sylhetexpress.jpg",
      "newsPaperLink": "https://sylhetexpress.net/",
      "isFavourite": false,
    },
    {
      "id": 21,
      "newsPaperName": "lakshmipur24",
      "newsPaperImage":
          "assets/images/local_newspapers_images/lakshmipur24.jpg",
      "newsPaperLink": "https://lakshmipur24.com/",
      "isFavourite": false,
    },
    {
      "id": 22,
      "newsPaperName": "prothom feni",
      "newsPaperImage":
          "assets/images/local_newspapers_images/prothom_feni.png",
      "newsPaperLink": "https://prothom-feni.com/",
      "isFavourite": false,
    },
    {
      "id": 23,
      "newsPaperName": "gramerkagoj",
      "newsPaperImage": "assets/images/local_newspapers_images/gramerkagoj.png",
      "newsPaperLink": "https://gramerkagoj.com/",
      "isFavourite": false,
    },
    {
      "id": 24,
      "newsPaperName": "khulnanchal",
      "newsPaperImage": "assets/images/local_newspapers_images/khulnanchal.png",
      "newsPaperLink": "https://khulnanchal.com/",
      "isFavourite": false,
    },
  ];

  dynamic internationalNewspaperList = [
    {
      "id": 0,
      "newsPaperName": "afp",
      "newsPaperImage": "assets/images/international_newspapers_images/afp.jpg",
      "newsPaperLink": "https://www.afp.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "theguardian",
      "newsPaperImage":
          "assets/images/international_newspapers_images/theguardian.jpg",
      "newsPaperLink": "https://www.theguardian.com/international",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "abcnews",
      "newsPaperImage":
          "assets/images/international_newspapers_images/abcnews.jpg",
      "newsPaperLink": "https://abcnews.go.com/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "thedailystar",
      "newsPaperImage":
          "assets/images/international_newspapers_images/thedailystar.jpg",
      "newsPaperLink": "https://www.thedailystar.net/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "themoscowtimes",
      "newsPaperImage":
          "assets/images/international_newspapers_images/themoscowtimes.jpg",
      "newsPaperLink": "https://www.themoscowtimes.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "yahoo news",
      "newsPaperImage":
          "assets/images/international_newspapers_images/news_yahoo.jpg",
      "newsPaperLink": "https://news.yahoo.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "daily sun",
      "newsPaperImage":
          "assets/images/international_newspapers_images/daily_sun.jpg",
      "newsPaperLink": "https://www.daily-sun.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "thebangladeshtoday",
      "newsPaperImage":
          "assets/images/international_newspapers_images/thebangladeshtoday.jpg",
      "newsPaperLink": "https://thebangladeshtoday.com/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "thefinancialexpress",
      "newsPaperImage":
          "assets/images/international_newspapers_images/thefinancialexpress_bd.jpg",
      "newsPaperLink": "https://thefinancialexpress.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "nytimes",
      "newsPaperImage":
          "assets/images/international_newspapers_images/nytimes.jpg",
      "newsPaperLink": "https://www.nytimes.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "hindustantimes",
      "newsPaperImage":
          "assets/images/international_newspapers_images/hindustantimes.jpg",
      "newsPaperLink": "https://www.hindustantimes.com/",
      "isFavourite": false,
    },
  ];

  dynamic radioChannelList = [
    {
      "id": 0,
      "newsPaperName": "voabangla",
      "newsPaperImage": "assets/images/radio_channels_images/voabangla.jpg",
      "newsPaperLink": "https://www.voabangla.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "bbc",
      "newsPaperImage": "assets/images/radio_channels_images/bbc_co_bd.jpg",
      "newsPaperLink": "https://www.bbc.com/bengali",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "dw",
      "newsPaperImage": "assets/images/radio_channels_images/dw_de.jpg",
      "newsPaperLink": "https://www.dw.com/bn/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "parstoday",
      "newsPaperImage": "assets/images/radio_channels_images/parstoday_ir.jpg",
      "newsPaperLink": "https://parstoday.ir/bn",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "nhk",
      "newsPaperImage":
          "assets/images/radio_channels_images/www3_nhk_or_jp.jpg",
      "newsPaperLink": "https://www3.nhk.or.jp/nhkworld/bn/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "bengali cri",
      "newsPaperImage":
          "assets/images/radio_channels_images/bengali_cri_cn.jpg",
      "newsPaperLink": "https://bengali.cri.cn/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "abcradio",
      "newsPaperImage": "assets/images/radio_channels_images/abcradio_fm.jpg",
      "newsPaperLink": "https://abcradio.fm/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "radiotodaybd",
      "newsPaperImage":
          "assets/images/radio_channels_images/radiotodaybd_fm.jpg",
      "newsPaperLink": "https://www.radiotodaybd.fm/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "unmultimedia",
      "newsPaperImage": "assets/images/radio_channels_images/unmultimedia.jpg",
      "newsPaperLink": "https://unmultimedia.org/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "dhakafm904",
      "newsPaperImage": "assets/images/radio_channels_images/dhakafm904.jpg",
      "newsPaperLink": "https://dhakafm904.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "radiofoorti",
      "newsPaperImage":
          "assets/images/radio_channels_images/radiofoorti_fm.jpg",
      "newsPaperLink": "https://radiofoorti.fm/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "betar",
      "newsPaperImage": "assets/images/radio_channels_images/betar_bd.jpg",
      "newsPaperLink": "https://betar.gov.bd/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "peoplesradio",
      "newsPaperImage":
          "assets/images/radio_channels_images/peoplesradio_fm.jpg",
      "newsPaperLink": "https://peoplesradio.fm/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "radioshadhin",
      "newsPaperImage":
          "assets/images/radio_channels_images/radioshadhin_fm.jpg",
      "newsPaperLink": "https://radioshadhin.fm/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "banglaradio24",
      "newsPaperImage": "assets/images/radio_channels_images/banglaradio24.jpg",
      "newsPaperLink": "https://banglaradio24.com/",
      "isFavourite": false,
    },
    {
      "id": 15,
      "newsPaperName": "radiogoongoon",
      "newsPaperImage": "assets/images/radio_channels_images/radiogoongoon.jpg",
      "newsPaperLink": "https://radiogoongoon.com/",
      "isFavourite": false,
    },
    {
      "id": 16,
      "newsPaperName": "jago fm",
      "newsPaperImage": "assets/images/radio_channels_images/jago_fm.jpg",
      "newsPaperLink": "https://jago.fm/",
      "isFavourite": false,
    },
  ];

  dynamic internationalTvChannelList = [
    {
      "id": 0,
      "newsPaperName": "cnn",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/edition_cnn.jpg",
      "newsPaperLink": "https://edition.cnn.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "aljazeera",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/aljazeera.jpg",
      "newsPaperLink": "https://www.aljazeera.com/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "ndtv",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/ndtv.jpg",
      "newsPaperLink": "https://www.ndtv.com/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "reuters",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/reuters.jpg",
      "newsPaperLink": "https://www.reuters.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "foxnews",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/foxnews.jpg",
      "newsPaperLink": "https://www.foxnews.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "geo",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/geo_tv.jpg",
      "newsPaperLink": "https://www.geo.tv/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "sky",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/news_sky.jpg",
      "newsPaperLink": "https://news.sky.com/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "euronews",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/euronews.jpg",
      "newsPaperLink": "https://www.euronews.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "discovery",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/discovery.jpg",
      "newsPaperLink": "https://www.discovery.com/",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "cctv",
      "newsPaperImage":
          "assets/images/international_tv_channels_images/english_cctv_cn.jpg",
      "newsPaperLink": "https://english.cctv.com/",
      "isFavourite": false,
    },
  ];

  dynamic indianNewspaperList = [
    {
      "id": 0,
      "newsPaperName": "anandabazar",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/anandabazar.jpg",
      "newsPaperLink": "https://www.anandabazar.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "aajkaal",
      "newsPaperImage": "assets/images/indian_newspapers_images/aajkaal.jpg",
      "newsPaperLink": "https://aajkaal.in/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "kolkata24x7",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/kolkata24x7.png",
      "newsPaperLink": "https://kolkata24x7.in/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "zeenews",
      "newsPaperImage": "assets/images/indian_newspapers_images/24ghanta.png",
      "newsPaperLink": "https://zeenews.india.com/bengali/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "abplive",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/abpananda_abplive.png",
      "newsPaperLink": "https://bengali.abplive.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "ndtv",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/ndtv_bangla.png",
      "newsPaperLink": "https://www.ndtv.com/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "syandanpatrika",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/syandanpatrika.jpg",
      "newsPaperLink": "https://syandanpatrika.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "sangbadpratidin",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/sangbadpratidin.jpg",
      "newsPaperLink": "https://www.sangbadpratidin.in/",
      "isFavourite": false,
    },
    {
      "id": 8,
      "newsPaperName": "bartamanpatrika",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/bartamanpatrika.jpg",
      "newsPaperLink": "https://bartamanpatrika.com/home",
      "isFavourite": false,
    },
    {
      "id": 9,
      "newsPaperName": "ganashakti",
      "newsPaperImage": "assets/images/indian_newspapers_images/ganashakti.jpg",
      "newsPaperLink": "https://ganashakti.com/",
      "isFavourite": false,
    },
    {
      "id": 10,
      "newsPaperName": "eisamay",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/epaper_eisamay.jpg",
      "newsPaperLink": "https://eisamay.com/",
      "isFavourite": false,
    },
    {
      "id": 11,
      "newsPaperName": "uttarbangasambad",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/uttarbangasambad.jpg",
      "newsPaperLink": "https://uttarbangasambad.com/",
      "isFavourite": false,
    },
    {
      "id": 12,
      "newsPaperName": "dainiksambad",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/dainiksambad.jpg",
      "newsPaperLink": "https://dainiksambad.net/",
      "isFavourite": false,
    },
    {
      "id": 13,
      "newsPaperName": "aamadermalda",
      "newsPaperImage":
          "assets/images/indian_newspapers_images/aamadermalda.png",
      "newsPaperLink": "https://www.aamadermalda.in/",
      "isFavourite": false,
    },
    {
      "id": 14,
      "newsPaperName": "ganashakti",
      "newsPaperImage": "assets/images/indian_newspapers_images/ganashakti.jpg",
      "newsPaperLink": "https://bangla.ganashakti.co.in/",
      "isFavourite": false,
    },
  ];

  dynamic magazineList = [
    {
      "id": 0,
      "newsPaperName": "bangladesherkhela",
      "newsPaperImage": "assets/images/magazines_images/bangladesherkhela.jpg",
      "newsPaperLink": "https://bangladesherkhela.com/",
      "isFavourite": false,
    },
    {
      "id": 1,
      "newsPaperName": "weeklybangalee",
      "newsPaperImage": "assets/images/magazines_images/weeklybangalee.jpg",
      "newsPaperLink": "https://weeklybangalee.com/",
      "isFavourite": false,
    },
    {
      "id": 2,
      "newsPaperName": "dhakacourier",
      "newsPaperImage": "assets/images/magazines_images/dhakacourier.jpg",
      "newsPaperLink": "https://dhakacourier.com.bd/",
      "isFavourite": false,
    },
    {
      "id": 3,
      "newsPaperName": "bichitra",
      "newsPaperImage": "assets/images/magazines_images/bichitra.jpg",
      "newsPaperLink": "https://www.bichitra.org/",
      "isFavourite": false,
    },
    {
      "id": 4,
      "newsPaperName": "comjagat",
      "newsPaperImage": "assets/images/magazines_images/comjagat.jpg",
      "newsPaperLink": "https://comjagat.com/",
      "isFavourite": false,
    },
    {
      "id": 5,
      "newsPaperName": "weeklyholiday",
      "newsPaperImage": "assets/images/magazines_images/weeklyholiday.jpg",
      "newsPaperLink": "https://www.weeklyholiday.net/",
      "isFavourite": false,
    },
    {
      "id": 6,
      "newsPaperName": "kaliokalam",
      "newsPaperImage": "assets/images/magazines_images/kaliokalam.jpg",
      "newsPaperLink": "https://www.kaliokalam.com/",
      "isFavourite": false,
    },
    {
      "id": 7,
      "newsPaperName": "scientificbangladesh",
      "newsPaperImage":
          "assets/images/magazines_images/scientificbangladesh.jpg",
      "newsPaperLink": "https://scientificbangladesh.com/",
      "isFavourite": false,
    },
  ];
}
