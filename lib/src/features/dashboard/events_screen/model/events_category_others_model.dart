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
    title: "Computer Science and Engineering",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Computer Science and Engineering"));
    },
  ),
  EventsCategoryOthers(
    title: "Electrical and Electronic Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Electrical and Electronic Engineering"));
    },
  ),
  EventsCategoryOthers(
    title: "Mathematics",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Mathematics"));
    },
  ),
  EventsCategoryOthers(
    title: "Fisheries",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Fisheries"));
    },
  ),
  EventsCategoryOthers(
    title: "Geology",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Geology"));
    },
  ),
  EventsCategoryOthers(
    title: "Management",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Management"));
    },
  ),
  EventsCategoryOthers(
    title: "Social Work",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const EventsCategoryOthersScreen(title: "Social Work"));
    },
  ),
];
