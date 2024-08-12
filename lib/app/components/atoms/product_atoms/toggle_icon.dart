import 'package:flutter/material.dart';

class ToggleIcon extends StatelessWidget {
  final bool isExpanded;

  const ToggleIcon({super.key, required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Icon(
      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
      color: Colors.blue,
    );
  }
}