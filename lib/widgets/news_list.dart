import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsList({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => NewsTile(articleModel: articles[index]),
      ),
    );
  }
}
