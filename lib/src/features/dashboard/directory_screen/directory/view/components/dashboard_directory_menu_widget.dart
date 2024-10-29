// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../global/constants/colors_resources.dart';
// import '../../../../global/constants/images.dart';
// import '../../../../global/widget/global_container.dart';
// import '../../../../global/widget/global_image_loader.dart';
// import '../department_screen/department_category_screen.dart';
// import '../hall_screen/hall_category_screen.dart';
// import '../institute_screen/faculty_category_screen.dart';
// import '../office_screen/office_category_screen.dart';
// import '../research_center_screen/research_center_category_screen.dart';
//
// final List<Map<String, String>> directoryItems = [
//   {'title': 'Office', 'imagePath': Images.officeIc},
//   {'title': 'Department', 'imagePath': Images.departmentIc},
//   {'title': 'Institute', 'imagePath': Images.institutionIc},
//   {'title': 'Research Center', 'imagePath': Images.researchCenterIc},
//   {'title': 'Hall', 'imagePath': Images.hallIc},
// ];
//
// void navigateToPage(String title) {
//   switch (title) {
//     case 'Office':
//       Get.to(() => const OfficeCategoryScreen());
//       break;
//     case 'Department':
//       Get.to(() => const DepartmentCategoryScreen());
//       break;
//     case 'Institute':
//       Get.to(() => const InstituteCategoryScreen());
//       break;
//     case 'Research Center':
//       Get.to(() => const ResearchCenterMenuScreen());
//       break;
//     case 'Hall':
//       Get.to(() => const HallCategoryScreen());
//       break;
//     default:
//       break;
//   }
// }
//
// Widget buildDashboardDirectoryMenuWidget(Map<String, String> directoryItem) {
//   return Expanded(
//     flex: 1,
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () => navigateToPage(directoryItem['title']!),
//         child: GlobalContainer(
//           elevation: 2,
//           color: ColorRes.white,
//           borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             child: Column(
//               children: [
//                 GlobalImageLoader(
//                   imagePath: directoryItem['imagePath']!,
//                   height: 55,
//                 ),
//                 Text(
//                   directoryItem['title']!,
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
