import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_text.dart';

class TransportWidget extends StatelessWidget {
  final String baseName;
  final String fromTo;
  final String upTrip;
  final String downTrip;
  final String updateDate;
  final Function() onTap;
  const TransportWidget({
    super.key,
    required this.baseName,
    required this.fromTo,
    required this.upTrip,
    required this.downTrip,
    required this.updateDate,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                            Icons.directions_bus,
                            size: 18,
                            color: ColorRes.black,
                          ),
                          GlobalText(
                            str: baseName,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorRes.red,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: ColorRes.black,
                          ),
                          GlobalText(
                            str: fromTo,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorRes.primaryColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.add_road,
                    size: 30,
                    color: ColorRes.black,
                  ),
                ],
              ),
            ),
            const Divider(),
            const GlobalText(
              str: "Up Trip",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              maxLines: 2,
              color: ColorRes.black,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: ColorRes.primaryColor,
                      ),
                      GlobalText(
                        str: upTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBoxH(10),
            const GlobalText(
              str: "Down Trip",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              maxLines: 2,
              color: ColorRes.black,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                        color: ColorRes.red,
                      ),
                      GlobalText(
                        str: downTrip,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GlobalText(
                str: updateDate,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorRes.grey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
