import 'package:dio/dio.dart';
import 'package:new_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});

  Future<List<ArticleModel>> getHeadLineNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=b486d4af144e48ba97ea5296005154f0&category=general');

    List<ArticleModel> articles = [];

    for (var article in response.data['articles']) {
      articles.add(ArticleModel.fromJson(article));
    }
    return articles;
  }
}
