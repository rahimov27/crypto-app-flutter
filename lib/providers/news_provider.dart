import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  String title = '';
  String description = '';
  String image = '';

  String title1 = '';
  String description1 = '';
  String image1 = '';

  String title2 = '';
  String description2 = '';
  String image2 = '';

  String title3 = '';
  String description3 = '';
  String image3 = '';

  final dio = Dio();

  void getNews() async {
    final response = await dio.get(
        'https://api.thenewsapi.com/v1/news/all?api_token=5fc7RaCgoIAef26Kil0QhYJF9M5j9LBqCTyxFrHf&search=bitcoin&language=en&page=5');
    final response1 = await dio.get(
        'https://api.thenewsapi.com/v1/news/all?api_token=5fc7RaCgoIAef26Kil0QhYJF9M5j9LBqCTyxFrHf&search=bitcoin&language=en&page=2');
    final response2 = await dio.get(
        'https://api.thenewsapi.com/v1/news/all?api_token=5fc7RaCgoIAef26Kil0QhYJF9M5j9LBqCTyxFrHf&search=bitcoin&language=en&page=3');
    final response3 = await dio.get(
        'https://api.thenewsapi.com/v1/news/all?api_token=5fc7RaCgoIAef26Kil0QhYJF9M5j9LBqCTyxFrHf&search=bitcoin&language=en&page=10');
    // print(response.data["data"][1]["title"]);
    title = response.data["data"][1]["title"];
    description = response.data["data"][1]["description"];
    image = response.data["data"][1]["image_url"];

    title1 = response1.data["data"][1]["title"];
    description1 = response1.data["data"][1]["description"];
    image1 = response1.data["data"][1]["image_url"];

    title2 = response2.data["data"][1]["title"];
    description2 = response2.data["data"][1]["description"];
    image2 = response2.data["data"][1]["image_url"];

    title3 = response3.data["data"][1]["title"];
    description3 = response3.data["data"][1]["description"];
    image3 = response3.data["data"][1]["image_url"];
    notifyListeners();
  }
}
