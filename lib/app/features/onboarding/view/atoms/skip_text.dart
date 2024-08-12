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
      child: const Text(
        'Lewati',
        style: TextStyle(
          color: Color(0xff434747),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }
}
