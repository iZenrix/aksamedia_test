import 'package:arkatama_test/app/components/atoms/product_module/toggle_icon.dart';
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
          Text(
            isExpanded ? 'Sembunyikan' : 'Selengkapnya',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          ToggleIcon(isExpanded: isExpanded),
        ],
      ),
    );
  }
}
