import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const BodyLargeText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: color),
    );
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  final Color? color;

  const BodyMediumText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}

class BodySmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const BodySmallText({
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
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
    );
  }
}
