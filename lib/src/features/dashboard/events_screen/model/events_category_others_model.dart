import 'package:get/get.dart';
import '../../../../global/constants/images.dart';
import '../view/events_category_others_screen.dart';

// News Category Others Model
class EventsCategoryOthers {
  final String title;
  final String imagePath;
  final Function() onTap;

  EventsCategoryOthers({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of News Category Others
final List<EventsCategoryOthers> eventsCategoryOthers = [
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Science",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Science"));
    },
  ),
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Engineering"));
    },
  ),
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Business Studies"));
    },
  ),
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Social Science"));
    },
  ),
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Agriculture and Life Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Agriculture and Life Science"));
    },
  ),
  EventsCategoryOthers(
    title: "ইন্সটিটিউট of Earth Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "ইন্সটিটিউট of Earth Science"));
    },
  ),
];
