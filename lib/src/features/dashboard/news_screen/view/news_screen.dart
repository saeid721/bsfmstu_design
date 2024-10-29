import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import '../model/news_category_others_model.dart';
import '../model/news_model.dart';
import 'components/news_category_others_widget.dart';
import 'components/news_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  String appBarTitle = 'BSFMSTU News';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        appBarTitle = _tabController.index == 0 ? 'BSFMSTU News' : 'Other News';
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorRes.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          splashRadius: 0.1,
          icon: const Icon(Icons.menu, color: ColorRes.white, size: 22),
          onPressed: () {
            drawerKey.currentState!.isDrawerOpen ? drawerKey.currentState!.closeDrawer() : drawerKey.currentState!.openDrawer();
          },
        ),
        title: GlobalText(
          str: appBarTitle,
          color: ColorRes.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          fontFamily: 'Rubik',
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const DashboardScreen());
            },
            child: const Icon(Icons.home, color: ColorRes.white, size: 25),
          ),
          sizedBoxW(15),
        ],
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // News Tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: newsModel.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final news = newsModel[index];
                          return NewsWidget(
                            title: news.title,
                            imagePath: news.imagePath,
                            date: news.date,
                            onTap: news.onTap,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // Other News Tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: newsCategoryOthers.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final newsCategory = newsCategoryOthers[index];
                          return NewsCategoryOthersWidget(
                            title: newsCategory.title,
                            onTap: newsCategory.onTap,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: ColorRes.primaryColor,
            child: TabBar(
              controller: _tabController,
              indicatorColor: ColorRes.white,
              labelColor: ColorRes.white,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  icon: Icon(Icons.article),
                  text: "BSFMSTU News",
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: "Other News",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
