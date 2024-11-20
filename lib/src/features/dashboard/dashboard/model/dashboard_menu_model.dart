import 'package:get/get.dart';
import '../../../../global/constants/images.dart';
import '../../calendar_screen/view/calender_screen.dart';
import '../../directory_screen/directory/view/directory_screen.dart';
import '../../events_screen/view/events_screen.dart';
import '../../news_screen/view/news_tab_screen.dart';
import '../../notice_screen/view/notice_screen.dart';
import '../../transport_screen/view/transport_screen.dart';
import '../../videos_screen/view/videos_screen.dart';

// DashboardItem Model
class DashboardItem {
  final String title;
  final String imagePath;
  final Function() onTap;

  DashboardItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of dashboard items
final List<DashboardItem> dashboardItems = [
  DashboardItem(
    title: "Directory",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const DirectoryScreen());
    },
  ),
  DashboardItem(
    title: "Calendar",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const CalendarScreen());
    },
  ),
  DashboardItem(
    title: "News",
    imagePath: Images.newspaperIc,
    onTap: () {
      Get.to(() => const NewsTabScreen());
    },
  ),
  DashboardItem(
    title: "Notice",
    imagePath: Images.noticeboardIc,
    onTap: () {
      Get.to(() => const NoticeScreen());
    },
  ),
  DashboardItem(
    title: "Events",
    imagePath: Images.eventsIc,
    onTap: () {
      Get.to(() => const EventsScreen());
    },
  ),
  DashboardItem(
    title: "Videos",
    imagePath: Images.videoIc,
    onTap: () {
      Get.to(() => const VideosScreen());
    },
  ),
  DashboardItem(
    title: "Transport",
    imagePath: Images.transportIc,
    onTap: () {
      Get.to(() => const TransportScreen());
    },
  ),
];
