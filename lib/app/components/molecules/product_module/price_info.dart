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
        Text(
          price,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff848C8B),
          ),
        ),
      ],
    );
  }
}
