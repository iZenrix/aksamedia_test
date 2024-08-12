import 'package:flutter/material.dart';

class TitleLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const TitleLargeText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: color),
    );
  }
}

class TitleMediumText extends StatelessWidget {
  final String text;
  final Color? color;

  const TitleMediumText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: color),
    );
  }
}

class TitleSmallText extends StatelessWidget {
  final String text;
  final Color? color;

  const TitleSmallText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: color),
    );
  }
}