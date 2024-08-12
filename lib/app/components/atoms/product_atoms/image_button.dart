import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.imagePath,
    this.onPressed,
  });

  final String imagePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        imagePath,
        width: 30,
        height: 30,
      ),
    );
  }
}
