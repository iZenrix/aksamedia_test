import 'package:flutter/material.dart';

class HeadlineLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const HeadlineLargeText({
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
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class HeadlineMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const HeadlineMediumText({
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
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class HeadlineSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? alignment;

  const HeadlineSmallText({
    super.key,
    required this.text,
    this.color,
    this.weight,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: alignment,
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: color,
            fontWeight: weight,
          ),
    );
  }
}
