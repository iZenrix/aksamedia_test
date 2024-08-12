import 'package:flutter/material.dart';

class HeadlineLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const HeadlineLargeText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: color),
    );
  }
}

class HeadlineMediumText extends StatelessWidget {
  final String text;
  final Color? color;

  const HeadlineMediumText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: color),
    );
  }
}

class HeadlineSmallText extends StatelessWidget {
  final String text;
  final Color? color;

  const HeadlineSmallText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: color),
    );
  }
}