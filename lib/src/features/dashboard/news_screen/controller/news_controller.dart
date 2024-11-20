import 'package:get/get.dart';

import '../model/news_model.dart';

class NewsController extends GetxController {
  static NewsController current = Get.put(NewsController());

  bool isLoading = false;
  NewsCategoryModel newsCategoryModel = NewsCategoryModel(data: []);
  NewsPostModel newsPostModel = NewsPostModel(data: []);
  NewsSubCategoryModel newsSubCategoryModel = NewsSubCategoryModel(data: []);

  // Mock method to initialize categories
  void initializeLocalNewsCategoryList() {
    newsCategoryModel = NewsCategoryModel(data: [
      NewsCategoryData(id: "1", name: "Local News", icon: "assets/local_news.png"),
      NewsCategoryData(id: "2", name: "World News", icon: "assets/world_news.png"),
    ]);
    update(); // Manually notify listeners of the update
  }

  // Mock method for news posts
  void initializeLocalNewsPostList(String? categoryId) {
    newsPostModel = NewsPostModel(data: [
      NewsPostData(id: "1", title: "Breaking News", thumbnailImage: "assets/news1.png", date: "2024-11-04"),
      NewsPostData(id: "2", title: "Tech News", thumbnailImage: "assets/news2.png", date: "2024-11-03"),
    ]);
    update();
  }

  // Mock method for subcategories
  void initializeLocalNewsSubCategoryList(String? categoryId) {
    newsSubCategoryModel = NewsSubCategoryModel(data: [
      NewsSubCategoryData(id: "1", name: "Politics", icon: "assets/politics.png"),
      NewsSubCategoryData(id: "2", name: "Economy", icon: "assets/economy.png"),
    ]);
    update();
  }
}
