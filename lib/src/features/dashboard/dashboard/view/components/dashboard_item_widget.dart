import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/images.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_sized_box.dart';
import '../../../../../global/widget/global_text.dart';

class DashboardItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color? imageColor;
  final Function() onTap;

  const DashboardItemWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.imageColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: GlobalContainer(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          borderRadiusCircular: 10,
          borderColor: ColorRes.borderColor,
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                child: imagePath.isNotEmpty
                    ? (imagePath.startsWith('http') || imagePath.startsWith('https'))
                    ? ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    imageColor ?? Colors.transparent,
                    BlendMode.srcIn,
                  ),
                  child: Image.network(
                    imagePath,
                    height: 60,
                    width: 60,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        Images.directoryIc,
                        height: 60,
                        width: 60,
                        color: imageColor ?? ColorRes.red,
                      );
                    },
                  ),
                )
                    : Image.asset(
                  imagePath,
                  height: 60,
                  width: 60,
                  color: imageColor ?? ColorRes.red,
                )
                    : Image.asset(
                  'assets/app_src/place_holder_img.jpg',
                  height: 60,
                  width: 60,
                  color: imageColor ?? ColorRes.red,
                ),
              ),
              sizedBoxH(5),
              GlobalText(
                str: title,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorRes.primaryColor,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
