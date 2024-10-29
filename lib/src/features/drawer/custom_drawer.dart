import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bsfmstu_design/src/features/dashboard/about_screen/view/about_screen.dart';
import 'package:bsfmstu_design/src/global/widget/global_container.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/constants/images.dart';
import '../../global/widget/global_image_loader.dart';
import '../../global/widget/global_list_tile_widget.dart';
import '../../global/widget/global_sized_box.dart';
import '../dashboard/calendar_screen/view/calender_screen.dart';
import '../dashboard/dashboard/view/dashboard_screen.dart';
import '../dashboard/directory_screen/directory/view/directory_screen.dart';
import '../dashboard/events_screen/view/events_screen.dart';
import '../dashboard/news_screen/view/news_screen.dart';
import '../dashboard/notice_screen/view/notice_screen.dart';
import '../dashboard/transport_screen/view/transport_screen.dart';
import '../dashboard/videos_screen/view/videos_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int isDrop = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          GlobalContainer(
            width: size(context).width,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 10),
            color: ColorRes.white,
            child: const Center(
              child: GlobalImageLoader(
                imagePath: Images.appLogo,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomListTile(
                    leading: const Icon(Icons.home_outlined, color: ColorRes.red),
                    title: "Home",
                    onTap: () {
                      Get.to(() => const DashboardScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.menu_book, color: ColorRes.red),
                    title: "SAU Directory",
                    onTap: () {
                      Get.to(() => const DirectoryScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.calendar_month_rounded, color: ColorRes.red),
                    title: "SAU Calendar",
                    onTap: () {
                      Get.to(() => const CalendarScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.newspaper_outlined, color: ColorRes.red),
                    title: "SAU News",
                    onTap: () {
                      Get.to(() => const NewsScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.notifications_none_outlined, color: ColorRes.red),
                    title: "SAU Notice",
                    onTap: () {
                      Get.to(() => const NoticeScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.event_available, color: ColorRes.red),
                    title: "SAU Events",
                    onTap: () {
                      Get.to(() => const EventsScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.video_camera_back_rounded, color: ColorRes.red),
                    title: "SAU Videos",
                    onTap: () {
                      Get.to(() => const VideosScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.directions_bus, color: ColorRes.red),
                    title: "SAU Transport",
                    onTap: () {
                      Get.to(() => const TransportScreen());
                    }),
                CustomListTile(
                    leading: const Icon(Icons.info_outline, color: ColorRes.red),
                    title: "About",
                    onTap: () {
                      Get.to(() => const AboutScreen());
                    }),

                //sizedBoxH(20),
                // CustomListTile(
                //     leading: const Icon(Icons.logout, color: ColorRes.primaryColor),
                //     title: "Log Out",
                //     onTap: () async{
                //       final String? token = locator<MyPrefs>().gettString(key: PrefsKeys.userToken);
                //       SharedPreferences preferences = await SharedPreferences.getInstance();
                //       log("===/@ User Token: $token");
                //       await preferences.clear().whenComplete(() => Get.offAll(()=> const SignInScreen()));
                //       log("===/@ User Token: $token");
                //     }
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
