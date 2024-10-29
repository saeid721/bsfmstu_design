import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../view/hall_category_details_screen.dart';

// Hall Category Model
class HallCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  HallCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Hall Category
final List<HallCategory> hallCategory = [
  HallCategory(
    title: "Shaheed Tajuddin Ahmad Hall",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
  HallCategory(
    title: "Ila Mitra Hall",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
  HallCategory(
    title: "Shaheed Ahsanullah Master Hall",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
  HallCategory(
    title: "Sheikh Fazilatunnesa Mujib Hall",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
  HallCategory(
    title: "New Male Hall",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
  HallCategory(
    title: "New Female Hall",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const HallCategoryDetailsScreen());
    },
  ),
];
