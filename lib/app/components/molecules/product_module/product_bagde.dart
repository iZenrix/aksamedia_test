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
          Text(
            'NEW',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 5),
          Text(
            'Product Baru',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
