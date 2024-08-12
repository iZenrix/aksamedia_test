import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Beauty Set by Irvie',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: const Color(0xff000000),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          'Irvie group official',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff848C8B),
          ),
        ),
      ],
    );
  }
}
