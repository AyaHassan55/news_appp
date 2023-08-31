import 'package:flutter/material.dart';
import 'package:news_appp/views/web_view_screen.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WebViewScreen(url: articles[index].url),
                ));
              },
              child: NewsTile(
                articleModel: articles[index],
              ),
            ),
          );
        },
      ),
    );
  }
}








