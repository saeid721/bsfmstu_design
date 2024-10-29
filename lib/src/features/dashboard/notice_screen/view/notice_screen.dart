import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import '../model/notice_category_others_model.dart';
import '../model/notice_model.dart';
import 'components/notice_category_others_widget.dart';
import 'components/notice_widget.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  String appBarTitle = 'BSFMSTU Notice';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        appBarTitle = _tabController.index == 0 ? 'BSFMSTU Notice' : 'Other Notice';
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
                        itemCount: noticeModel.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final notice  = noticeModel[index];
                          return NoticeWidget(
                            title: notice.title,
                            imagePath: notice.imagePath,
                            date: notice.date,
                            onTap: notice.onTap,
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
                        itemCount: noticeCategoryOthers.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final institute = noticeCategoryOthers[index];
                          return NoticeCategoryOthersWidget(
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
                  text: "BSFMSTU Notice",
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: "Other Notice",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
