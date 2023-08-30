import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/services/news_service.dart';
import 'package:new_app/widgets/news_list.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: NewsService(dio: Dio()).getHeadLineNews(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Oops,There is an Error .. Try Later'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
