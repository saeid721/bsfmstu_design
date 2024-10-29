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
    title: "ইন্সটিটিউট of Science",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Science"));
    },
  ),
  VideosCategoryOthers(
    title: "ইন্সটিটিউট of Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Engineering"));
    },
  ),
  VideosCategoryOthers(
    title: "ইন্সটিটিউট of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Business Studies"));
    },
  ),
  VideosCategoryOthers(
    title: "ইন্সটিটিউট of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Social Science"));
    },
  ),
  VideosCategoryOthers(
    title: "ইন্সটিটিউট of Agriculture and Life Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Agriculture and Life Science"));
    },
  ),
  VideosCategoryOthers(
    title: "ইন্সটিটিউট of Earth Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const VideosCategoryOthersScreen(title: "ইন্সটিটিউট of Earth Science"));
    },
  ),
];
