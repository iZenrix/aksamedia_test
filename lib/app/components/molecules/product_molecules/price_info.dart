import 'package:arkatama_test/app/components/atoms/text/body_text.dart';
import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class PriceInfo extends StatelessWidget {
  final String price;
  final String description;

  const PriceInfo({
    super.key,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleMediumText(
          text: price,
          color: const Color(0xff000000),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(height: 2),
        BodyMediumText(
          text: description,
          color: const Color(0xff697170),
        ),
      ],
    );
  }
}
