import 'package:get/get.dart';
import '../../../../global/constants/images.dart';
import '../view/videos_category_others_screen.dart';

// Videos Category Others Model
class VideosCategoryOthers {
  final String title;
  final String imagePath;
  final Function() onTap;

  VideosCategoryOthers({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Videos Category Others
final List<VideosCategoryOthers> videosCategoryOthers = [
  VideosCategoryOthers(
    title: "Computer Science and Engineering",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Computer Science and Engineering"));
    },
  ),
  VideosCategoryOthers(
    title: "Electrical and Electronic Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Electrical and Electronic Engineering"));
    },
  ),
  VideosCategoryOthers(
    title: "Mathematics",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Mathematics"));
    },
  ),
  VideosCategoryOthers(
    title: "Fisheries",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Fisheries"));
    },
  ),
  VideosCategoryOthers(
    title: "Geology",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Geology"));
    },
  ),
  VideosCategoryOthers(
    title: "Management",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Management"));
    },
  ),
  VideosCategoryOthers(
    title: "Social Work",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "Social Work"));
    },
  ),
];
