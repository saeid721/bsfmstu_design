import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:bsfmstu_design/src/global/widget/global_sized_box.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_text.dart';
import '../events_screen.dart';

class EventsDetailsWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String details;
  final String startDate;
  final String endDate;

  const EventsDetailsWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.details,
    required this.startDate,
    required this.endDate,
  });

  @override
  _EventsDetailsWidgetState createState() => _EventsDetailsWidgetState();
}

class _EventsDetailsWidgetState extends State<EventsDetailsWidget> {
  bool _showShareOptions = false;

  final List<Map<String, String>> _socialMedia = [
    {'icon': 'assets/app_src/icon/social_ic/facebook.png', 'platform': 'Facebook'},
    {'icon': 'assets/app_src/icon/social_ic/twitter.png', 'platform': 'Twitter'},
    {'icon': 'assets/app_src/icon/social_ic/instagram.png', 'platform': 'Instagram'},
    {'icon': 'assets/app_src/icon/social_ic/linkedin.png', 'platform': 'LinkedIn'},
    {'icon': 'assets/app_src/icon/social_ic/whatsapp.png', 'platform': 'WhatsApp'},
  ];

  void _shareToSocialMedia(String platform) {
    String shareContent = 'Check out this event: ${widget.title}';
    // Share content using share_plus package
    Share.share(shareContent, subject: 'Event Sharing');
    // Optionally, you can use platform-specific sharing links or actions here.
  }

  @override
  Widget build(BuildContext context) {
    return GlobalContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: GlobalText(
              str: widget.title,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              maxLines: 3,
              color: ColorRes.primaryColor,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: Get.width,
            height: 190,
            child: widget.imagePath.isNotEmpty
                ? Image.network(
                    widget.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/dummy_img/03.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  )
                : Image.asset(
                    'assets/app_src/place_holder_img.jpg',
                    fit: BoxFit.cover,
                  ),
          ),
          sizedBoxH(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalText(
                str: widget.startDate,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorRes.textColor,
              ),
              GlobalText(
                str: widget.endDate,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorRes.textColor,
              ),
            ],
          ),
          GlobalText(
            str: widget.details,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorRes.textColor,
            textAlign: TextAlign.justify,
          ),
          sizedBoxH(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const EventsScreen());
                },
                child: const GlobalContainer(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 22,
                        color: ColorRes.grey,
                      ),
                      Text(
                        'Go Back',
                        style: TextStyle(color: ColorRes.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _showShareOptions = !_showShareOptions;
                      });
                    },
                    child: const GlobalContainer(
                      color: ColorRes.primaryColor,
                      borderRadiusCircular: 50,
                      padding: EdgeInsets.all(10),
                      elevation: 2,
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.share,
                        size: 30,
                        color: ColorRes.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (_showShareOptions) ...[
            Wrap(
              spacing: 5,
              children: _socialMedia.map((social) {
                return GestureDetector(
                  onTap: () {
                    _shareToSocialMedia(social['platform']!);
                  },
                  child: Image.asset(
                    social['icon']!,
                    width: 35,
                    height: 35,
                    //color: ColorRes.primaryColor,
                  ),
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
