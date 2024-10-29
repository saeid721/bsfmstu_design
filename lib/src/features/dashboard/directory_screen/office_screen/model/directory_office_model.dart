import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../view/office_category_details_screen.dart';

// Office Category Model
class OfficeCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  OfficeCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Office Category
final List<OfficeCategory> officeCategoryItems = [
  OfficeCategory(
    title: "Chancellor",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Vice-Chancellor",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Pro Vice-Chancellor",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Treasurer",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Dean",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Registrar",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Syndicate",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Academic council",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Controller of Examination",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Planning and Development",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Public Relations",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Account & Finance",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "ICT Cell",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Medical Center",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
  OfficeCategory(
    title: "Proctor",
    imagePath: Images.officeIc,
    onTap: () {
      Get.to(() => const OfficeCategoryDetailsScreen());
    },
  ),
];
