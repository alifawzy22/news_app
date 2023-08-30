import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/services/news_service.dart';
import 'package:new_app/widgets/news_list.dart';

class NewsListBuilder extends StatelessWidget {
  final String category;
  const NewsListBuilder({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: NewsService(dio: Dio()).getHeadLineNews(category: category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: const Center(
                child: Text('Oops,There is an Error .. Try Later'),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
