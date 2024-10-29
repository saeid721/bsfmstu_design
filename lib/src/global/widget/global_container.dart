import 'package:flutter/material.dart';

class GlobalContainer extends StatelessWidget {
  final double borderRadiusCircular;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget? child;
  final Color color;
  final double? width;
  final double? height;
  final double elevation;
  final Color? borderColor;
  final double borderWidth;

  const GlobalContainer({
    super.key,
    this.borderRadiusCircular = 0.0,
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.child,
    this.width,
    this.height,
    this.color = Colors.white,
    this.borderRadius,
    this.elevation = 0.0,
    this.borderColor,
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(borderRadiusCircular),
        boxShadow: elevation > 0
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: elevation,
                  offset: const Offset(0, 2),
                )
              ]
            : [], // No shadow if elevation is 0
        border: borderColor != null ? Border.all(color: borderColor!, width: borderWidth) : null,
      ),
      child: child,
    );
  }
}
