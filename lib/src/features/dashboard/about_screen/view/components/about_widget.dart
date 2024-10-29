import 'package:flutter/material.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';

// AboutWidget
class AboutWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;

  const AboutWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.text,
  });

  // Define the website URL
  final String websiteUrl = "https://bsfmstu.ac.bd/";

  // Function to open the website in the browser
  Future<void> _launchWebsite() async {
    final Uri url = Uri.parse(websiteUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $websiteUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GlobalContainer(
      child: Column(
        children: [
          // Title and Image Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: GlobalText(
                  str: title,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: ColorRes.primaryColor,
                  textAlign: TextAlign.center,
                ),
              ),
              GlobalContainer(
                padding: const EdgeInsets.all(8),
                color: ColorRes.white,
                borderRadiusCircular: 50,
                height: 80,
                width: 80,
                borderColor: ColorRes.primaryColor,
                child: GlobalImageLoader(
                  imagePath: imagePath,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                  imageFor: ImageFor.asset, // Change to ImageFor.asset
                ),
              ),
            ],
          ),
          sizedBoxH(10),

          // Text and Contact Info Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalText(
                str: text,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
                color: ColorRes.textColor,
              ),
            ],
          ),
          sizedBoxH(20),

          // Website Link Section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _launchWebsite, // Open website when tapped
                child: const GlobalContainer(
                  elevation: 1,
                  borderColor: ColorRes.borderColor,
                  borderRadiusCircular: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: GlobalText(
                    str: "Visit BSFMSTU Website",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorRes.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),

          // Developer Info Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GlobalText(
                str: "Design & Develop by -",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorRes.black,
              ),
              Image.asset('assets/app_src/stitbd_logo.png', height: 82, fit: BoxFit.cover),
              sizedBoxH(10),
            ],
          ),
        ],
      ),
    );
  }
}
