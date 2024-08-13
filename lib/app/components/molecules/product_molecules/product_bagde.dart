import 'package:aksamedia_test/app/components/atoms/text/body_text.dart';
import 'package:aksamedia_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class ProductBadge extends StatelessWidget {
  const ProductBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffECE806),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        children: [
          TitleMediumText(
            text: 'NEW',
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
          SizedBox(width: 5),
          BodyMediumText(
            text: 'Product Baru',
            color: Color(0xff000000),
          ),
        ],
      ),
    );
  }
}
