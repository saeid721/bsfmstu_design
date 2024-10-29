import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../view/research_center_category_details_screen.dart';

// Research Center Category Model
class ResearchCenterCategory {
  final String title;
  final String imagePath;
  final Function() onTap;

  ResearchCenterCategory({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

// Define the list of Research Center Category
final List<ResearchCenterCategory> researchCenterCategory = [
  ResearchCenterCategory(
    title: "ইন্সটিটিউট of Science",
    imagePath: Images.directoryIc,
    onTap: () {
      Get.to(() => const ResearchCenterDetailsMenuScreen());
    },
  ),
  ResearchCenterCategory(
    title: "ইন্সটিটিউট of Engineering",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const ResearchCenterDetailsMenuScreen());
    },
  ),
  ResearchCenterCategory(
    title: "ইন্সটিটিউট of Business Studies",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const ResearchCenterDetailsMenuScreen());
    },
  ),
  ResearchCenterCategory(
    title: "ইন্সটিটিউট of Social Science",
    imagePath: Images.calendarIc,
    onTap: () {
      Get.to(() => const ResearchCenterDetailsMenuScreen());
    },
  ),
];
