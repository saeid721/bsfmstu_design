import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_sized_box.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../../drawer/custom_drawer.dart';
import '../../../dashboard/view/dashboard_screen.dart';
import 'components/department_category_details_widget.dart';

class DepartmentCategoryDetailsScreen extends StatefulWidget {
  const DepartmentCategoryDetailsScreen({super.key});

  @override
  State<DepartmentCategoryDetailsScreen> createState() => _DepartmentCategoryDetailsScreenState();
}

class _DepartmentCategoryDetailsScreenState extends State<DepartmentCategoryDetailsScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          title: const GlobalText(
            str: 'অনুষদ/বিভাগ',
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
          GlobalContainer(
            height: 35,
            padding: const EdgeInsets.only(bottom: 5),
            color: ColorRes.primaryColor,
            child: Center(
              child: Expanded(
                child: TabBar(
                  controller: _tabController,
                  labelColor: ColorRes.primaryColor,
                  unselectedLabelColor: ColorRes.white,
                  unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  indicator: const BoxDecoration(
                    color: ColorRes.white,
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorRes.white, width: 1),
                        ),
                        child: const Center(child: Text('শিক্ষক ও কর্মকর্তা')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorRes.white, width: 1),
                        ),
                        child: const Center(child: Text('শিক্ষক')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorRes.white, width: 1),
                        ),
                        child: const Center(child: Text('কর্মকর্তা')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GlobalContainer(
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // First Tab: Shows all teachers and staff
                    Center(
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return DepartmentCategoryDetailsWidget(
                            name: "প্রফেসর ডাঃ মুহাম্মাদ রোকনুজ্জামান",
                            designation: "ভিসি",
                            phone: "+88 01719340940",
                            email: "vc@sbsfmstu.ac.bd",
                            imagePath: 'assets/app_src/place_holder_img.jpg',
                            call: "কল",
                            sms: "এস.এম.এস",
                            mail: "ইমেইল",
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                    // Second Tab: Shows only teachers (teacher_or_staff_type == "1")
                    Center(
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return DepartmentCategoryDetailsWidget(
                            name: "প্রফেসর ডাঃ মুহাম্মাদ রোকনুজ্জামান",
                            designation: "ভিসি",
                            phone: "+88 01719340940",
                            email: "vc@sbsfmstu.ac.bd",
                            imagePath: 'assets/app_src/place_holder_img.jpg',
                            call: "কল",
                            sms: "এস.এম.এস",
                            mail: "ইমেইল",
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                    // Third Tab: Shows only staff (teacher_or_staff_type == "2")
                    Center(
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return DepartmentCategoryDetailsWidget(
                            name: "প্রফেসর ডাঃ মুহাম্মাদ রোকনুজ্জামান",
                            designation: "ভিসি",
                            phone: "+88 01719340940",
                            email: "vc@sbsfmstu.ac.bd",
                            imagePath: 'assets/app_src/place_holder_img.jpg',
                            call: "কল",
                            sms: "এস.এম.এস",
                            mail: "ইমেইল",
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}