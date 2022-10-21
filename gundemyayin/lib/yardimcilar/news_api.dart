import 'dart:convert';
import 'package:gundemyayin/model.dart';
import 'package:http/http.dart' as http;
import 'package:gundemyayin/yardimcilar/model.dart';

Future<List<NewsApiModel>> getNews() async {
  Uri uri = Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=099d83008e7f4cd595032fa3ae6bfa72");

  final response = await http.get(uri);

  if (response.statusCode == 200 || response.statusCode == 201) {
    Map<String, dynamic> map = json.decode(response.body);

    List _articalsList = map['articles'];

    List<NewsApiModel> newsList = _articalsList
        .map((jsonData) => NewsApiModel.fromJson(jsonData))
        .toList();

    print(_articalsList);

    return newsList;
  } else {
    print("ulaşılamıyor");
    return [];
  }
}
