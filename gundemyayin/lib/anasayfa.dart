import 'package:flutter/material.dart';
import 'dart:io';
import 'package:gundemyayin/yanmenu.dart';
import 'package:share/share.dart';

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String get baslik => "Golcüler Geldi";
  String get altbaslik =>
      "Fenerbahçe'ye Alex De Souza ve Deivid De Souza geldi.";

  Widget _arama() {
    Widget _haber({
      required String image,
      required String baslik,
      required String altbaslik,
      required double haberlerg,
    }) {
      return Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 310,
              decoration: BoxDecoration(
                color: Color(0xfff1f1f1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      baslik,
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.newspaper,
                          color: Color(0xffdf842b),
                          size: 20,
                        ),
                        Container(
                          width: 260,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                altbaslik,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$ $haberlerg',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: 50,
      width: 350,
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Aramanızı yapabilirsiniz",
            prefixIcon: Icon(
              Icons.search,
              size: 26,
            ),
            fillColor: Color(0xffe4e4e4),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      backgroundColor: Color(0xff2b2b2b),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.message),
          onPressed: () {
            _scaffold.currentState?.openDrawer();
          },
          tooltip: 'Yan Menüyü Açınız',
        ),
        title: Text(
          'GÜNDEM YAYIN',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(9),
            child: Center(
              child: Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/1239267.png'),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _urlAc(Platform.isAndroid
                  ? "https://play.google.com/store/apps/details?id=com.ysb.esh&gl=TR"
                  : "https://apps.apple.com/tr/app/mynet-haber-son-dakika/id352826080?l=tr");
            },
            icon: Icon(
              Icons.star,
            ),
            tooltip: 'Puan Ver',
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/giris');
            },
            icon: Icon(
              Icons.login,
            ),
            tooltip: 'Giriş Yap',
          ),
          IconButton(
            onPressed: () {
              Share.share("""Gündem Mobil Uygulamasınını İndirmediniz mi?
                  Android:https://play.google.com/store/apps/details?id=com.ysb.esh&gl=TR 
                  IOS:https://apps.apple.com/tr/app/mynet-haber-son-dakika/id352826080?l=tr""");
            },
            icon: Icon(
              Icons.share,
            ),
            tooltip: 'Paylaş',
          ),
        ],
      ),
      body: Container(
          child: ListView(
            children: [
              Container(
                height: 760,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gündem Yayıncılığa Hoş Geldiniz",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Hangi haberlere bakacaksınız?",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _arama(),
                        Container(
                          height: 47,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffdf842b),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(Icons.settings, color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "Haberler",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      drawer: YanMenu(),
    );
  }

  void _urlAc(String s) {}
}
