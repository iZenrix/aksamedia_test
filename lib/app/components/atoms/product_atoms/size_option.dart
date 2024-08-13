import 'package:aksamedia_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class SizeOption extends StatelessWidget {
  final String label;
  final bool isSelected;

  const SizeOption({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffE6E7E7),
        borderRadius: BorderRadius.circular(6),
        border: isSelected
            ? Border.all(color: const Color(0xff242626), width: 2)
            : null,
      ),
      child: TitleSmallText(
        text: label,
        color: isSelected ? const Color(0xff000000) : const Color(0xff4A4E5A),
      ),
    );
  }
}
