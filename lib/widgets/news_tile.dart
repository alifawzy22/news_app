import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsTile({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: articleModel.image == null
                  ? Image.asset(
                      'assets/images/noImage.png',
                      fit: BoxFit.fitHeight,
                    )
                  : CachedNetworkImage(
                      imageUrl: articleModel.image!,
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/images/noImage.png',
                        fit: BoxFit.fitHeight,
                      ),
                      fadeInCurve: Curves.bounceInOut,
                      placeholder: (context, url) => Image.asset(
                        'assets/images/imageLoading.jpg',
                        fit: BoxFit.fill,
                      ),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.description ?? '',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
