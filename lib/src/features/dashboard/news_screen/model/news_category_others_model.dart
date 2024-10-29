import 'package:get/get.dart';
import '../../../../global/constants/images.dart';
import '../view/news_category_others_screen.dart';

// News Category Others Model
class NewsCategoryOthers {
  final String title;
  final String imagePath;
  final Function() onTap;

  NewsCategoryOthers({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of News Category Others
final List<NewsCategoryOthers> newsCategoryOthers = [
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Science",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Science"));
    },
  ),
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Engineering"));
    },
  ),
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Business Studies"));
    },
  ),
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Social Science"));
    },
  ),
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Agriculture and Life Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Agriculture and Life Science"));
    },
  ),
  NewsCategoryOthers(
    title: "ইন্সটিটিউট of Earth Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const NewsCategoryOthersScreen(title: "ইন্সটিটিউট of Earth Science"));
    },
  ),
];
