import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/news_controller.dart';
import 'components/news_subcategory_widget.dart';

class NewsCategoryListScreen extends StatefulWidget {
  final String? typeId;
  const NewsCategoryListScreen({super.key, this.typeId});

  @override
  State<NewsCategoryListScreen> createState() => _NewsCategoryListScreenState();
}

class _NewsCategoryListScreenState extends State<NewsCategoryListScreen> {
  @override
  void initState() {
    super.initState();
    NewsController.current.initializeLocalNewsSubCategoryList(widget.typeId);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(builder: (newsController) {
      return ListView.builder(
        itemCount: newsController.newsSubCategoryModel.data?.length ?? 0,
        itemBuilder: (context, index) {
          final subCategory = newsController.newsSubCategoryModel.data?[index];
          return NewsSubcategoryWidget(
            name: subCategory?.name ?? '',
            iconPath: subCategory?.icon ?? '',
            onTap: () {
              // Perform navigation or a specific action on subcategory click
            },
          );
        },
      );
    });
  }
}
