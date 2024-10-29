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
    title: "ইন্সটিটিউট of Science",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Science"));
    },
  ),
  NoticeCategoryOthers(
    title: "ইন্সটিটিউট of Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Engineering"));
    },
  ),
  NoticeCategoryOthers(
    title: "ইন্সটিটিউট of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Business Studies"));
    },
  ),
  NoticeCategoryOthers(
    title: "ইন্সটিটিউট of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Social Science"));
    },
  ),
  NoticeCategoryOthers(
    title: "ইন্সটিটিউট of Agriculture and Life Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Agriculture and Life Science"));
    },
  ),
  NoticeCategoryOthers(
    title: "ইন্সটিটিউট of Earth Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NoticeCategoryOthersScreen(title: "ইন্সটিটিউট of Earth Science"));
    },
  ),
];
