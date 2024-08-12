import 'package:arkatama_test/app/components/atoms/product_atoms/product_atoms.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final int selectedSize;
  final Function(int) onSizeSelected;

  const SizeSelector({
    super.key,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onSizeSelected(0),
          child: SizeOption(
            label: 'Paket 1',
            isSelected: selectedSize == 0,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => onSizeSelected(1),
          child: SizeOption(
            label: 'Paket 2',
            isSelected: selectedSize == 1,
          ),
        ),
      ],
    );
  }
}
