import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';

class NewsSubcategoryWidget extends StatelessWidget {
  final String name;
  final String iconPath;
  final VoidCallback onTap;

  const NewsSubcategoryWidget({
    super.key,
    required this.name,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListTile(
          leading: GlobalImageLoader(
            imagePath: iconPath,
            color: ColorRes.primaryColor,
            height: 30,
            width: 30,
          ),
          title: GlobalText(
            str: name,
            color: ColorRes.primaryColor,
          ),
          trailing:
              const Icon(Icons.arrow_forward_ios, color: ColorRes.primaryColor),
        ),
      ),
    );
  }
}
