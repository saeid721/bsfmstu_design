import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import '../model/events_category_others_model.dart';
import '../model/events_model.dart';
import 'components/events_category_others_widget.dart';
import 'components/events_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  String appBarTitle = 'BSFMSTU Events';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        appBarTitle = _tabController.index == 0 ? 'BSFMSTU Events' : 'Other Events';
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
                        itemCount: eventsModel.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final events = eventsModel[index];
                          return EventsWidget(
                            startDate: events.startDate,
                            endDate: events.endDate,
                            title: events.title,
                            imagePath: events.imagePath,
                            details: events.details,
                            onTap: events.onTap,
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
                        itemCount: eventsCategoryOthers.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          final eventsCategory = eventsCategoryOthers[index];
                          return EventsCategoryOthersWidget(
                            title: eventsCategory.title,
                            onTap: eventsCategory.onTap,
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
                  text: "BSFMSTU Events",
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: "Other Events",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
