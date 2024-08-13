import 'package:aksamedia_test/app/components/atoms/product_atoms/product_atoms.dart';
import 'package:aksamedia_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;

  const ToggleButton({
    super.key,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleSmallText(
            text: isExpanded ? 'Sembunyikan' : 'Selengkapnya',
            color: const Color(0xff0EA5E9),
          ),
          ToggleIcon(isExpanded: isExpanded),
        ],
      ),
    );
  }
}
