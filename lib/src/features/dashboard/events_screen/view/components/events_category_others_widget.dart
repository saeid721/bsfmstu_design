import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/constants/images.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_sized_box.dart';
import '../../../../../global/widget/global_text.dart';

class EventsCategoryOthersWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const EventsCategoryOthersWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorRes.white200,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GlobalContainer(
              borderRadiusCircular: 50,
              borderColor: ColorRes.borderColor,
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: const GlobalImageLoader(
                  imagePath: Images.institutionIc,
                  imageFor: ImageFor.asset,
                  height: 22,
                  width: 22,
                  color: ColorRes.red,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            sizedBoxW(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalText(
                    str: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                    color: ColorRes.secondaryColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              size: 22,
              color: ColorRes.grey,
            ),
          ],
        ),
      ),
    );
  }
}
