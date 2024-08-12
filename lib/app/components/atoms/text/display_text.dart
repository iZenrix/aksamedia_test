import 'package:flutter/material.dart';

class DisplayLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const DisplayLargeText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge!.copyWith(color: color),
    );
  }
}

class DisplayMediumText extends StatelessWidget {
  final String text;
  final Color? color;

  const DisplayMediumText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(color: color),
    );
  }
}

class DisplaySmallText extends StatelessWidget {
  final String text;
  final Color? color;

  const DisplaySmallText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displaySmall!.copyWith(color: color),
    );
  }
}












