import 'package:aksamedia_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final Widget? widget;
  final BorderSide? borderSide;
  final EdgeInsetsGeometry? padding;

  const PrimaryButton({
    super.key,
    this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
    this.foregroundColor,
    this.backgroundColor,
    this.fontWeight,
    this.widget,
    this.borderSide,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height ?? Get.height * 0.05,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xff242626),
          foregroundColor: foregroundColor ?? const Color(0xffF5F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            side: borderSide ??
                const BorderSide(
                  color: Color(0xff242626), // Border color
                  width: 0, // Border width
                ),
          ),
          padding: padding,
        ),
        child: widget ??
            TitleSmallText(
              text: text ?? '',
              color: foregroundColor ?? const Color(0xffF5F6F6),
            ),
      ),
    );
  }
}
