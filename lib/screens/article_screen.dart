import 'dart:math';

import 'package:flutter/material.dart';
import 'package:news_app/widget/image_container.dart';

import '../models/article_model.dart';
import '../widget/custom_tag.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.ImageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _NewsHeadline(article: article),
            _NewsBody(article: article)
          ],
        ),
      ),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(backgroundColor: Colors.black, children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                    article.authorImageUrl,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  article.author,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ]),
              const SizedBox(width: 10),
              CustomTag(backgroundColor: Colors.grey.shade200, children: [
                const Icon(Icons.timer, color: Colors.grey),
                const SizedBox(width: 10),
                Text(
                    '${DateTime.now().difference(article.created_at).inHours} H',
                    style: Theme.of(context).textTheme.bodyMedium),
              ]),
              CustomTag(backgroundColor: Colors.grey.shade200, children: [
                const Icon(Icons.remove_red_eye, color: Colors.grey),
                const SizedBox(width: 10),
                Text('${article.views} views',
                    style: Theme.of(context).textTheme.bodyMedium),
              ]),
            ],
          ),
          const SizedBox(height: 20.0),
          Text(article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
          const SizedBox(height: 20.0),
          Text(article.body,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    height: 1.5,
                  )),
          const SizedBox(height: 20),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
              ),
              itemBuilder: (context, index) {
                return ImageContainer(
                  width: MediaQuery.of(context).size.width * 0.42,
                  imageUrl: article.ImageUrl,
                  margin:
                      const EdgeInsets.only(right: 0.5, bottom: 5.0, left: 5.0),
                );
              })
        ],
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({Key? key, required this.article}) : super(key: key);

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(
              article.category,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ]),
          const SizedBox(height: 10),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            article.SubTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
