import 'package:flutter/material.dart';

class SizeOption extends StatelessWidget {
  final String label;
  final bool isSelected;

  const SizeOption({super.key, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffE6E7E7),
        borderRadius: BorderRadius.circular(6),
        border: isSelected ? Border.all(color: const Color(0xff242626), width: 2) : null,
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
