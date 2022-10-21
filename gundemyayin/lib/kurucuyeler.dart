import 'package:gundemyayin/yardimcilar/kurucukart.dart';
import 'package:flutter/material.dart';

List<String> kurucular = [
  "Koray Göksu",
  "Mert Yılmaz",
  "Kaan Yılmaz",
  "İsmail Göksu",
  "Yusuf Dürmüş",
  "Erdem Arslan",
  "Kemal Pulat",
];

class KurucUyeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kurucu Üyeler')),
      body: Padding(
          padding: EdgeInsets.all(33.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: kurucular.length,
            itemBuilder: (BuildContext context, int pozisyon) {
              return KurucuKart(kurucu: kurucular[pozisyon]);
            },
          )),
    );
  }
}
