import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../view/faculty_category_details_screen.dart';

// Faculty Category Model
class FacultyCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  FacultyCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Faculty Category
final List<FacultyCategory> facultyCategory = [
  FacultyCategory(
    title: "Faculty of Engineering",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
  FacultyCategory(
    title: "Faculty of Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
  FacultyCategory(
    title: "Faculty of Agriculture and Life Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
  FacultyCategory(
    title: "Faculty of Earth Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
  FacultyCategory(
    title: "Faculty of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
  FacultyCategory(
    title: "Faculty of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const FacultyDetailsScreen());
    },
  ),
];
