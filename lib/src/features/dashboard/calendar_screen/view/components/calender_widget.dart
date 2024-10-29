import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_text.dart';

// Map of government holidays with details
final Map<DateTime, String> holidays = {
  DateTime(2024, 1, 1): 'New Year’s Day',
  DateTime(2024, 3, 26): 'Independence Day',
  DateTime(2024, 5, 1): 'Labour Day',
  DateTime(2024, 12, 16): 'Victory Day',
};

class CalenderWidget extends StatelessWidget {
  final String title;
  final DateTime selectedDay;

  const CalenderWidget({
    super.key,
    required this.title,
    required this.selectedDay,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalContainer(
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.only(bottom: 15),
      borderRadiusCircular: 10,
      borderColor: ColorRes.borderColor,
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.details_outlined,
                size: 20,
                color: ColorRes.primaryColor,
              ),
              sizedBoxW(5),
              Expanded(
                child: Row(
                  children: [
                    GlobalText(
                      str: DateFormat('EEEE, MMM d, y').format(selectedDay), // Format date to string
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorRes.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                    GlobalText(
                      str: title,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                      color: ColorRes.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
