import 'package:flutter/material.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/global_sized_box.dart';
import '../../global/widget/global_text.dart';
import 'global_image_loader.dart';

class GlobalButtonWidget extends StatefulWidget {
  final double height;
  final double? width;
  final double? radius;
  final double? horizontal;
  final double? vertical;
  final String str;
  final String? img;
  final Function() onTap;
  final double? elevation;
  final Color? buttomColor;
  final Color? textColor;
  final Color? imgColor;
  final double? textSize;
  final Color? borderColor;
  final Color? foregroundColor;

  const GlobalButtonWidget({
    super.key,
    this.height = 57,
    this.width,
    this.horizontal,
    this.vertical,
    required this.str,
    this.img,
    this.radius,
    required this.onTap,
    this.elevation,
    this.buttomColor,
    this.textColor,
    this.imgColor,
    this.textSize,
    this.borderColor,
    this.foregroundColor
  });

  @override
  State<GlobalButtonWidget> createState() => _GlobalButtonWidgetState();
}

class _GlobalButtonWidgetState extends State<GlobalButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.horizontal ?? 0, vertical: widget.vertical ?? 0),
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          elevation: widget.elevation ?? 0,
          padding: EdgeInsets.zero,
          foregroundColor: widget.foregroundColor ?? Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: widget.buttomColor ?? ColorRes.bottomColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius ?? 5),
              side: BorderSide(
                  width: 1,
                  color: widget.borderColor ?? Colors.transparent
              )
          ),
          // disabledForegroundColor: Colors.transparent,
          // disabledBackgroundColor: Colors.transparent,
          // overlayColor: MaterialStateProperty.all(Colors.transparent), // Set overlayColor to remove the press shadow
          maximumSize: Size(widget.width ?? size(context).width, widget.height),
          minimumSize: Size(widget.width ?? size(context).width, widget.height),
        ),
        child: Center(
          child: widget.img == null
              ? GlobalText(
            str: widget.str,
            color: widget.textColor ?? ColorRes.white,
            fontSize: widget.textSize ?? 14,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            height: 0.10,
            fontFamily: 'Rubik',
          ) : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlobalImageLoader(
                imagePath: widget.img ?? "",
                height: 22,
                width: 22,
                color: widget.imgColor ?? ColorRes.grey,
              ),
              sizedBoxW(10),
              GlobalText(
                str: widget.str,
                color: widget.textColor ?? ColorRes.white,
                fontSize: widget.textSize ?? 14,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                height: 0.10,
                fontFamily: 'Rubik',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
