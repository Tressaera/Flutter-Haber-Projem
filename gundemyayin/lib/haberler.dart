import 'package:gundemyayin/yardimcilar/const.dart';
import 'package:gundemyayin/yardimcilar/model.dart';
import 'package:flutter/material.dart';
import 'package:gundemyayin/yardimcilar/news_api.dart';
import 'package:gundemyayin/yardimcilar/news_screen.dart';

import 'model.dart';

class Haberler extends StatefulWidget {
  const Haberler({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Haberler> {
  List<NewsApiModel>? newsList;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews().then((value) {
      setState(() {
        if (value.isNotEmpty) {
          newsList = value.cast<NewsApiModel>();
          isLoading = false;
        } else {
          print("Liste Boş");
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: getColors[1],
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height / 12,
                width: size.width / 1.1,
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      // color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width / 4,
                    ),
                    Text(
                      "Gündem Yayın",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        //color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              isLoading
                  ? Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              )
                  : Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: newsList!.length,
                    itemBuilder: (context, index) {
                      return listItems(size, newsList![index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listItems(Size size, NewsApiModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ReadingNews(
              model: model,
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          width: size.width / 1.15,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Column(
            children: [
              Container(
                height: size.height / 4,
                width: size.width / 1.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
                child: model.imageUrl != ""
                    ? Image.network(
                  model.imageUrl,
                  fit: BoxFit.cover,
                )
                    : Text("Resim Yüklenemyor"),
              ),
              Container(
                width: size.width / 1.1,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: size.width / 1.1,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  model.description,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
