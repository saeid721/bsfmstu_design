import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_text.dart';

class EventsWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String startDate;
  final String endDate;
  final String details;
  final Function() onTap;
  const EventsWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.details,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalContainer(
        padding: const EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.borderColor,
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width,
              height: 190,
              child: imagePath.isNotEmpty
                  ? Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/dummy_img/04.jpg',
                          fit: BoxFit.cover,
                        );
                      },
                    )
                  : Image.asset(
                      'assets/app_src/place_holder_img.jpg',
                      fit: BoxFit.cover,
                    ),
            ),
            sizedBoxW(10),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: GlobalText(
                str: title,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                maxLines: 2,
                color: ColorRes.primaryColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_rounded,
                            size: 18,
                            color: ColorRes.grey,
                          ),
                          GlobalText(
                            str: startDate,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_rounded,
                            size: 18,
                            color: ColorRes.grey,
                          ),
                          GlobalText(
                            str: endDate,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 22,
                    color: ColorRes.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
