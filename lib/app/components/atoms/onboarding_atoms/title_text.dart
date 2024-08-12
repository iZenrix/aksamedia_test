import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;

  const TitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w700,
        color: const Color(0xff242626),
          ),
    );
  }
}
