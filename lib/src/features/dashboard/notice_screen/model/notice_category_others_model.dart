import 'package:get/get.dart';
import '../../../../global/constants/images.dart';
import '../view/notice_category_others_screen.dart';

// Notice Category Others Model
class NoticeCategoryOthers {
  final String title;
  final String imagePath;
  final Function() onTap;

  NoticeCategoryOthers({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Notice Category Others
final List<NoticeCategoryOthers> noticeCategoryOthers = [
  NoticeCategoryOthers(
    title: "Computer Science and Engineering",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Computer Science and Engineering"));
    },
  ),
  NoticeCategoryOthers(
    title: "Electrical and Electronic Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Electrical and Electronic Engineering"));
    },
  ),
  NoticeCategoryOthers(
    title: "Mathematics",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Mathematics"));
    },
  ),
  NoticeCategoryOthers(
    title: "Fisheries",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Fisheries"));
    },
  ),
  NoticeCategoryOthers(
    title: "Geology",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Geology"));
    },
  ),
  NoticeCategoryOthers(
    title: "Management",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Management"));
    },
  ),
  NoticeCategoryOthers(
    title: "Social Work",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "Social Work"));
    },
  ),
];
