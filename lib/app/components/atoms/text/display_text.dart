import 'package:flutter/material.dart';

class DisplayLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const DisplayLargeText({
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
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class DisplayMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const DisplayMediumText({
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
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class DisplaySmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const DisplaySmallText({
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
      style: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
