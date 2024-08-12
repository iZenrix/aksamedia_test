import 'package:flutter/material.dart';

class LabelLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const LabelLargeText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: color),
    );
  }
}

class LabelMediumText extends StatelessWidget {
  final String text;
  final Color? color;

  const LabelMediumText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium!.copyWith(color: color),
    );
  }
}

class LabelSmallText extends StatelessWidget {
  final String text;
  final Color? color;

  const LabelSmallText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(color: color),
    );
  }
}
