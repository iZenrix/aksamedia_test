import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String text;

  const DescriptionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: const Color(0xff242626),
          ),
    );
  }
}
