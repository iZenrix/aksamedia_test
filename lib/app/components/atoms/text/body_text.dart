import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const BodyLargeText({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;

  const BodyMediumText({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class BodySmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;

  const BodySmallText({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
    );
  }
}
