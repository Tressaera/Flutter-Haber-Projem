import 'package:flutter/material.dart';
import 'package:gundemyayin/anasayfa.dart';
import 'package:gundemyayin/giris.dart';
import 'package:gundemyayin/haberler.dart';
import 'package:gundemyayin/hakkimizda.dart';
import 'package:gundemyayin/iletisim.dart';
import 'package:gundemyayin/kurucuyeler.dart';

void main() => runApp(AnaGiris());

class AnaGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF2F2C7F),
      ),
      home: AnaSayfa(),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => AnaSayfa(),
  "/giris": (BuildContext context) => Giris(),
  "/hakkimizda": (BuildContext context) => Hakkimizda(),
  "/iletisim": (BuildContext context) => Iletisim(),
  "/kurucuyeler": (BuildContext context) => KurucUyeler(),
  "/haberler": (BuildContext context) => Haberler(),
};
