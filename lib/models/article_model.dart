class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  ArticleModel({this.image, required this.title, this.description});

  factory ArticleModel.fromJson(jsonData) {
    ArticleModel articleModel = ArticleModel(
      title: jsonData['title'],
      image: jsonData['urlToImage'],
      description: jsonData['description'],
    );
    return articleModel;
  }
}
