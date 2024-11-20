import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/news_controller.dart';
import 'components/news_widget.dart';

class NewsScreen extends StatefulWidget {
  final String? typeId;
  const NewsScreen({super.key, required this.typeId});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
    NewsController.current.initializeLocalNewsPostList(widget.typeId);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(builder: (newsController) {
      return ListView.builder(
        itemCount: newsController.newsPostModel.data?.length ?? 0,
        itemBuilder: (ctx, index) {
          final item = newsController.newsPostModel.data?[index];
          return NewsWidget(
            title: item?.title ?? '',
            imagePath: item?.thumbnailImage ?? '',
            date: item?.date ?? '',
            onTap: () {
              // Mock navigation or perform local task
            },
          );
        },
      );
    });
  }
}
