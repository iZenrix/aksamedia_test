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
      child: Text(
        'Lewati',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color(0xff434747),
            ),
      ),
    );
  }
}
