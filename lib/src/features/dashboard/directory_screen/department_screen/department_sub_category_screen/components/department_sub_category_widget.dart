import 'package:flutter/material.dart';
import '../../../../../../global/constants/colors_resources.dart';
import '../../../../../../global/constants/enum.dart';
import '../../../../../../global/constants/images.dart';
import '../../../../../../global/widget/global_image_loader.dart';
import '../../../../../../global/widget/global_sized_box.dart';
import '../../../../../../global/widget/global_text.dart';


class DepartmentSubCategoryWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const DepartmentSubCategoryWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
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
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const GlobalImageLoader(
                imagePath: Images.departmentIc,
                imageFor: ImageFor.asset,
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
            sizedBoxW(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalText(
                    str: text,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                    color: ColorRes.black,
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
