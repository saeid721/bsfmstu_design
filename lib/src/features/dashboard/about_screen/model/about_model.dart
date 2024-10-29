import '../../../../global/constants/images.dart';

// About Model
class AboutModel {
  final String title;
  final String details;
  final String imagePath;

  AboutModel({
    required this.title,
    required this.details,
    required this.imagePath,
  });
}

// Define a single instance of About Model
final AboutModel aboutModel = AboutModel(
  title: "Bangamata Sheikh Fojilatunnesa Mujib Science & Technology University",
  details:
      """Bangamata Sheikh Fojilatunnesa Mujib Science and Technology University is established on 28 November 2017 vide act no 24 of 2017 as the 44th public university of Bangladesh. The Honorable Chancellor of the University and President of the People’s Republic of Bangladesh appointed Professor Dr. Mohammad Raknuzzaman as the  3rd Vice Chancellor.  He joined as the Vice Chancellor of Bangamata Sheikh Fojilatunnesa Mujib Science and Technology University on 22 October 2024. Although a new university yet under the dynamic leadership of the Vice Chancellor, the university has achieved remarkable milestones not only in academic, administrative and financial activities also in observing various national days and sports and cultural activities. The university authority has already planned to construct infrastructure for secured campus with modern educational facilities and high standard research environment surrounded by natural beauty.""",
  imagePath: Images.appLogo,
);
