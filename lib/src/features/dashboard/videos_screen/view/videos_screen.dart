import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import '../model/videos_category_others_model.dart';
import 'components/videos_category_others_widget.dart';
import 'components/videos_widget.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  String appBarTitle = 'BSFMSTU Videos';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        appBarTitle = _tabController.index == 0 ? 'BSFMSTU Videos' : 'Other Videos';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
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
                        itemCount: 15,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return const VideosWidget(
                            title: "দেখুন এক অন্য নজরে বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়, জামালাপুর।",
                            thumbnailPath: 'assets/app_src/place_holder_img.jpg',
                            date: '10/10/2024',
                            videoUrl: 'https://www.youtube.com/watch?v=cw51nXqEcEU',
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
                        itemCount: videosCategoryOthers.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final institute = videosCategoryOthers[index];
                          return VideosCategoryOthersWidget(
                            title: institute.title,
                            onTap: institute.onTap,
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
                  text: "BSFMSTU Videos",
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: "Other Videos",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
