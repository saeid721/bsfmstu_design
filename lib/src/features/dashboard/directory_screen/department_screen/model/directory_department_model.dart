import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../view/department_category_details_screen.dart';

// Department Category Model
class DepartmentCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  DepartmentCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Department Category
final List<DepartmentCategory> departmentCategoryItems = [
  DepartmentCategory(
    title: "Computer Science and Engineering",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Electrical and Electronic Engineering",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Mathematics",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Fisheries",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Geology",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Management",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
  DepartmentCategory(
    title: "Social Work",
    imagePath: Images.departmentIc,
    onTap: () {
      Get.to(() => const DepartmentCategoryDetailsScreen());
    },
  ),
];
