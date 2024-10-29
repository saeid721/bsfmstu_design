// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../global/constants/colors_resources.dart';
// import '../../../global/constants/images.dart';
// import '../../../global/widget/global_container.dart';
// import '../../../global/widget/global_image_loader.dart';
// import '../calendar_screen/calender_screen.dart';
// import '../directory_screen/directory_menu_screen.dart';
// import '../events_screen/events_screen.dart';
// import '../notice_screen/notice_screen.dart';
// import '../news_screen/news_screen.dart';
// import '../transport_screen/transport_screen.dart';
// import '../videos_screen/videos_screen.dart';
//
// final List<Map<String, String>> dashboardItems = [
//   {'title': 'Directory', 'imagePath': Images.directoryIc},
//   {'title': 'Calendar', 'imagePath': Images.calendarIc},
//   {'title': 'News', 'imagePath': Images.newspaperIc},
//   {'title': 'Notice', 'imagePath': Images.noticeboardIc},
//   {'title': 'Events', 'imagePath': Images.eventsIc},
//   {'title': 'Videos', 'imagePath': Images.videoIc},
//   {'title': 'Transport', 'imagePath': Images.transportIc},
// ];
//
// void navigateToPage(String title) {
//   switch (title) {
//     case 'Directory':
//       Get.to(() => const DirectoryMenuScreen());
//       break;
//     case 'Calendar':
//       Get.to(() => const CalendarScreen());
//       break;
//     case 'News':
//       Get.to(() => const NewsScreen());
//       break;
//     case 'Notice':
//       Get.to(() => const NoticeScreen());
//       break;
//     case 'Events':
//       Get.to(() => const EventsScreen());
//       break;
//     case 'Videos':
//       Get.to(() => const VideosScreen());
//       break;
//     case 'Transport':
//       Get.to(() => const TransportScreen());
//       break;
//     default:
//       break;
//   }
// }
//
// Widget buildDashboardMenuWidget(Map<String, String> dashboardItems) {
//   return Expanded(
//     flex: 1,
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () => navigateToPage(dashboardItems['title']!),
//         child: GlobalContainer(
//           elevation: 2,
//           color: ColorRes.white,
//           borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Column(
//               children: [
//                 GlobalImageLoader(
//                   imagePath: dashboardItems['imagePath']!,
//                   height: 55,
//                 ),
//                 Text(
//                   dashboardItems['title']!,
//                   style: const TextStyle(fontWeight: FontWeight.w500),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
