import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class SkipText extends StatelessWidget {
  final VoidCallback onTap;

  const SkipText({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const TitleMediumText(
        text: 'Lewati',
        color: Color(0xff434747),
      ),
    );
  }
}
