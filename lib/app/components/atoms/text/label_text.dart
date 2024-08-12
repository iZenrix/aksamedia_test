import 'package:flutter/material.dart';

class LabelLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const LabelLargeText({
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
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class LabelMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const LabelMediumText({
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
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class LabelSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const LabelSmallText({
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
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
