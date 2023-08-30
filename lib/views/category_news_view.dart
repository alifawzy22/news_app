import 'package:flutter/material.dart';
import 'package:new_app/widgets/news_list_builder.dart';

class CategoryNewsView extends StatelessWidget {
  final String category;
  const CategoryNewsView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 70),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [NewsListBuilder(category: category)],
        ),
      ),
    );
  }
}
