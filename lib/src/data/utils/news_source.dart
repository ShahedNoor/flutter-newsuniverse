import 'package:flutter/material.dart';

class NewsSource extends ChangeNotifier{
  dynamic banglaNewsPaperList = [
    {
      "id": 0,
      "newsPaperName": "prothom alo",
      "newsPaperImage": "assets/images/bangla_newspaper_images/prothom_alo.jpg",
      "newsPaperLink": "https://www.prothomalo.com/",
      "isFavourite": false,
    },{
      "id": 1,
      "newsPaperName": "ittefaq",
      "newsPaperImage": "assets/images/bangla_newspaper_images/ittefaq.jpg",
      "newsPaperLink": "https://www.ittefaq.com.bd/",
      "isFavourite": false,
    },{
      "id": 2,
      "newsPaperName": "jugantor",
      "newsPaperImage": "assets/images/bangla_newspaper_images/jugantor.jpg",
      "newsPaperLink": "https://www.jugantor.com/",
      "isFavourite": false,
    },{
      "id": 3,
      "newsPaperName": "kalerkantho",
      "newsPaperImage": "assets/images/bangla_newspaper_images/kalerkantho.jpg",
      "newsPaperLink": "https://www.kalerkantho.com/",
      "isFavourite": false,
    },{
      "id": 4,
      "newsPaperName": "samakal",
      "newsPaperImage": "assets/images/bangla_newspaper_images/samakal.jpg",
      "newsPaperLink": "https://samakal.com/",
      "isFavourite": false,
    },{
      "id": 5,
      "newsPaperName": "dailyjanakantha",
      "newsPaperImage": "assets/images/bangla_newspaper_images/dailyjanakantha.jpg",
      "newsPaperLink": "https://www.dailyjanakantha.com/",
      "isFavourite": false,
    },{
      "id": 6,
      "newsPaperName": "bd pratidin",
      "newsPaperImage": "assets/images/bangla_newspaper_images/bd_pratidin.jpg",
      "newsPaperLink": "https://www.bd-pratidin.com/",
      "isFavourite": false,
    },{
      "id": 7,
      "newsPaperName": "nayadiganta",
      "newsPaperImage": "assets/images/bangla_newspaper_images/nayadiganta.jpg",
      "newsPaperLink": "https://www.dailynayadiganta.com/",
      "isFavourite": false,
    },{
      "id": 8,
      "newsPaperName": "jjdin",
      "newsPaperImage": "assets/images/bangla_newspaper_images/jjdin.jpg",
      "newsPaperLink": "https://www.jaijaidinbd.com/",
      "isFavourite": false,
    },{
      "id": 9,
      "newsPaperName": "amar sangbad",
      "newsPaperImage": "assets/images/bangla_newspaper_images/amar_sangbad.jpg",
      "newsPaperLink": "https://www.amarsangbad.com/",
      "isFavourite": false,
    },{
      "id": 10,
      "newsPaperName": "protidinersangbad",
      "newsPaperImage": "assets/images/bangla_newspaper_images/protidinersangbad.jpg",
      "newsPaperLink": "https://www.protidinersangbad.com/",
      "isFavourite": false,
    },{
      "id": 11,
      "newsPaperName": "dailysangram",
      "newsPaperImage": "assets/images/bangla_newspaper_images/dailysangram.jpg",
      "newsPaperLink": "https://dailysangram.com/",
      "isFavourite": false,
    },{
      "id": 12,
      "newsPaperName": "mzamin",
      "newsPaperImage": "assets/images/bangla_newspaper_images/mzamin.jpg",
      "newsPaperLink": "https://mzamin.com/",
      "isFavourite": false,
    },{
      "id": 13,
      "newsPaperName": "bonikbarta",
      "newsPaperImage": "assets/images/bangla_newspaper_images/bonikbarta.jpg",
      "newsPaperLink": "https://bonikbarta.net/",
      "isFavourite": false,
    },{
      "id": 14,
      "newsPaperName": "bhorerkagoj",
      "newsPaperImage": "assets/images/bangla_newspaper_images/bhorerkagoj.jpg",
      "newsPaperLink": "https://bhorerkagoj.com/",
      "isFavourite": false,
    },{
      "id": 15,
      "newsPaperName": "the daily inqilab",
      "newsPaperImage": "assets/images/bangla_newspaper_images/the_daily_inqilab.png",
      "newsPaperLink": "https://dailyinqilab.com/",
      "isFavourite": false,
    },{
      "id": 16,
      "newsPaperName": "manobkantha",
      "newsPaperImage": "assets/images/bangla_newspaper_images/manobkantha.jpg",
      "newsPaperLink": "https://www.manobkantha.com.bd/",
      "isFavourite": false,
    },{
      "id": 17,
      "newsPaperName": "bdjournal",
      "newsPaperImage": "assets/images/bangla_newspaper_images/bdjournal.jpg",
      "newsPaperLink": "https://www.bd-journal.com/",
      "isFavourite": false,
    },{
      "id": 18,
      "newsPaperName": "alokitobangladesh",
      "newsPaperImage": "assets/images/bangla_newspaper_images/alokitobangladesh.jpg",
      "newsPaperLink": "https://www.alokitobangladesh.com/",
      "isFavourite": false,
    },{
      "id": 19,
      "newsPaperName": "sorejominbarta",
      "newsPaperImage": "assets/images/bangla_newspaper_images/sorejominbarta.jpg",
      "newsPaperLink": "https://sorejominbarta.com/",
      "isFavourite": false,
    },{
      "id": 20,
      "newsPaperName": "shomoyeralo",
      "newsPaperImage": "assets/images/bangla_newspaper_images/shomoyeralo.jpg",
      "newsPaperLink": "https://www.shomoyeralo.com/",
      "isFavourite": false,
    },{
      "id": 21,
      "newsPaperName": "kalbela",
      "newsPaperImage": "assets/images/bangla_newspaper_images/kalbela.png",
      "newsPaperLink": "https://www.kalbela.com/",
      "isFavourite": false,
    },{
      "id": 22,
      "newsPaperName": "ajkalerkhobor",
      "newsPaperImage": "assets/images/bangla_newspaper_images/ajkalerkhobor.jpg",
      "newsPaperLink": "https://ajkalerkhobor.com/",
      "isFavourite": false,
    },{
      "id": 23,
      "newsPaperName": "dainikbangla",
      "newsPaperImage": "assets/images/bangla_newspaper_images/dainik_bangla.jpg",
      "newsPaperLink": "https://www.dainikbangla.com.bd/",
      "isFavourite": false,
    },
  ];
}