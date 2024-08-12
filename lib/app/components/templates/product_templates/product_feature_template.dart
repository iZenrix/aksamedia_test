import 'package:flutter/material.dart';

class ProductFeatureTemplate extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget? footer;

  const ProductFeatureTemplate({
    super.key,
    required this.header,
    required this.body,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: body,
          ),
          header
        ],
      ),
    );
  }
}
