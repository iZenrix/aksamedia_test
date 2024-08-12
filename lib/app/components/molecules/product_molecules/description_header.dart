import 'package:flutter/material.dart';

class DescriptionHeader extends StatelessWidget {
  const DescriptionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Deskripsi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.copy,
          color: Colors.blue,
        ),
      ],
    );
  }
}
