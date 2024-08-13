import 'package:aksamedia_test/app/components/atoms/product_atoms/product_atoms.dart';
import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  final int selectedColor;
  final Function(int) onColorSelected;

  const ColorSelector({
    super.key,
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onColorSelected(0),
          child: ColorCircle(
            color: const Color(0xffDDB69A),
            isSelected: selectedColor == 0,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => onColorSelected(1),
          child: ColorCircle(
            color: const Color(0xff5B3E36),
            isSelected: selectedColor == 1,
          ),
        ),
      ],
    );
  }
}
