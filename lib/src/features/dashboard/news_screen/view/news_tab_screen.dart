import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_image_loader.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../controller/news_controller.dart';
import 'news_category_list_screen.dart';
import 'news_screen.dart';

class NewsTabScreen extends StatefulWidget {
  final String? id;
  const NewsTabScreen({super.key, this.id});

  @override
  State<NewsTabScreen> createState() => _NewsTabScreenState();
}

class _NewsTabScreenState extends State<NewsTabScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  String appBarTitle = 'Local News';

  @override
  void initState() {
    super.initState();
    NewsController.current.initializeLocalNewsCategoryList();
    setState(() {
      appBarTitle = NewsController.current.newsCategoryModel.data?.first.name ?? 'Local News';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(builder: (newsController) {
      return Scaffold(
        key: drawerKey,
        appBar: AppBar(
          backgroundColor: ColorRes.primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: ColorRes.white),
            onPressed: () {
              drawerKey.currentState!.isDrawerOpen ? drawerKey.currentState!.closeDrawer() : drawerKey.currentState!.openDrawer();
            },
          ),
          title: GlobalText(
            str: appBarTitle,
            color: ColorRes.white,
          ),
          actions: [
            const Icon(Icons.home, color: ColorRes.white),
            sizedBoxW(15),
          ],
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: selectedIndex == 0
                  ? NewsScreen(typeId: widget.id)
                  : NewsCategoryListScreen(typeId: widget.id),
            ),
            Container(
              color: ColorRes.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: newsController.newsCategoryModel.data?.map((item) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = item.id == widget.id ? 0 : 1;
                        appBarTitle = item.name ?? 'Local News';
                      });
                    },
                    child: Column(
                      children: [
                        GlobalImageLoader(
                          imagePath: item.icon ?? '',
                          color: ColorRes.white,
                          height: 20,
                          width: 20,
                        ),
                        GlobalText(
                          str: item.name ?? '',
                          fontSize: 12,
                        ),
                      ],
                    ),
                  );
                }).toList() ?? [],
              ),
            )
          ],
        ),
      );
    });
  }
}
