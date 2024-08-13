import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleMediumText(
          text: 'Beauty Set by Irvie',
          fontSize: 20,
          color: Color(0xff000000),
        ),
        SizedBox(height: 2),
        TitleSmallText(
          text: 'Irvie group official',
          color: Color(0xff848C8B),
        )
      ],
    );
  }
}
