// Mock data classes for news categories, posts, and subcategories
class NewsCategoryModel {
  List<NewsCategoryData>? data;
  NewsCategoryModel({this.data});
}

class NewsCategoryData {
  final String? id;
  final String? name;
  final String? icon;
  NewsCategoryData({this.id, this.name, this.icon});
}

class NewsPostModel {
  List<NewsPostData>? data;
  NewsPostModel({this.data});
}

class NewsPostData {
  final String? id;
  final String? title;
  final String? thumbnailImage;
  final String? date;
  NewsPostData({this.id, this.title, this.thumbnailImage, this.date});
}

class NewsSubCategoryModel {
  List<NewsSubCategoryData>? data;
  NewsSubCategoryModel({this.data});
}

class NewsSubCategoryData {
  final String? id;
  final String? name;
  final String? icon;
  NewsSubCategoryData({this.id, this.name, this.icon});
}
