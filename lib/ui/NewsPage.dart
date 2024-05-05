import 'package:crypto_project/common_widgets/top_news.dart';
import 'package:crypto_project/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          NewsWidget(
            title: context.watch<NewsProvider>().title,
            description: context.watch<NewsProvider>().description,
            image: context.watch<NewsProvider>().image,
          ),
          NewsWidget(
            title: context.watch<NewsProvider>().title1,
            description: context.watch<NewsProvider>().description1,
            image: context.watch<NewsProvider>().image1,
          ),
          NewsWidget(
            title: context.watch<NewsProvider>().title2,
            description: context.watch<NewsProvider>().description2,
            image: context.watch<NewsProvider>().image2,
          ),
          NewsWidget(
            title: context.watch<NewsProvider>().title3,
            description: context.watch<NewsProvider>().description3,
            image: context.watch<NewsProvider>().image3,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<NewsProvider>().getNews();
        },
        child: Icon(Icons.newspaper),
      ),
    );
  }
}
