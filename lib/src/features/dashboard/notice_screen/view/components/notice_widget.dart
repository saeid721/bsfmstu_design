import 'package:flutter/material.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_text.dart';


class NoticeWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final Function() onTap;
  const NoticeWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalContainer(
        padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.borderColor,
        elevation: 2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.notifications_none_outlined,
              size: 30,
              color: ColorRes.grey,
            ),
            sizedBoxW(10),

            Expanded(
              child: Column(
                children: [
                  GlobalText(
                    str: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    color: ColorRes.primaryColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_rounded,
                        size: 18,
                        color: ColorRes.grey,
                      ),
                      GlobalText(
                        str: date,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.grey,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
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
