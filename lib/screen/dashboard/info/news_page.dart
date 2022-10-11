import 'package:flutter/material.dart';
import 'package:sakuku/screen/dashboard/info/widget/news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final List tanggal = [
    "12 Januari 2021",
    "4 October 2020",
    "17 September 2020",
  ];

  final List judul = [
    "Sakuku hadir di kota baru",
    "Promo Sakuku",
    "Promo Sakuku",
  ];

  final List deskripsi = [
    "Sakuku hadir di kota baru",
    "Promo Sakuku",
    "Promo Sakuku",
  ];

  final List icon = [
    Icons.discount_outlined,
    Icons.discount_outlined,
    Icons.discount_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NewsCard(
            date: tanggal[index],
            title: judul[index],
            desc: deskripsi[index],
            icon: icon[index],
          );
        },
        itemCount: tanggal.length,
      ),
    );
  }
}
