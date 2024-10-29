import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../../department_screen/view/department_category_screen.dart';
import '../../faculty_screen/view/faculty_category_screen.dart';
import '../../hall_screen/view/hall_category_screen.dart';
import '../../office_screen/view/office_category_screen.dart';
import '../../research_center_screen/view/research_center_category_screen.dart';

// Directory Category Model
class DirectoryCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  DirectoryCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Directory Category
final List<DirectoryCategory> directoryItems = [
  DirectoryCategory(
    title: "Office",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryScreen());
    },
  ),
  DirectoryCategory(
    title: "Department",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryScreen());
    },
  ),
  DirectoryCategory(
    title: "Faculty",
    imagePath: Images.institutionIc,
    onTap: () {
      Get.to(() => const FacultyCategoryScreen());
    },
  ),
  DirectoryCategory(
    title: "Research Center",
    imagePath: Images.researchCenterIc,
    onTap: () {
      Get.to(() => const ResearchCenterMenuScreen());
    },
  ),
  DirectoryCategory(
    title: "Hall",
    imagePath: Images.hallIc,
    onTap: () {
      Get.to(() => const HallCategoryScreen());
    },
  ),
];
