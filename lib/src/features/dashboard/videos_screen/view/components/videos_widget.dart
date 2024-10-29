import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_sized_box.dart';
import '../../../../../global/widget/global_text.dart';

class VideosWidget extends StatelessWidget {
  final String thumbnailPath;
  final String title;
  final String date;
  final String videoUrl;

  const VideosWidget({
    super.key,
    required this.thumbnailPath,
    required this.title,
    required this.date,
    required this.videoUrl,
  });

  // Function to launch the YouTube URL
  Future<void> _launchYouTubeVideo(String url) async {
    final Uri urlUri = Uri.parse(url);
    if (!await launchUrl(
      urlUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchYouTubeVideo(videoUrl);
      },
      child: GlobalContainer(
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.borderColor,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month_rounded,
                    size: 18,
                    color: ColorRes.grey,
                  ),
                  sizedBoxW(5),
                  Expanded(
                    child: GlobalText(
                      str: title,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                      color: ColorRes.primaryColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width,
                height: 190,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    thumbnailPath.isNotEmpty
                        ? Image.network(
                      thumbnailPath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/dummy_img/05.jpg',
                          fit: BoxFit.cover,
                        );
                      },
                    )
                        : Image.asset(
                      'assets/app_src/place_holder_img.jpg',
                      fit: BoxFit.cover,
                    ),
                    // Play icon overlay
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white.withOpacity(0.7),
                      size: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
