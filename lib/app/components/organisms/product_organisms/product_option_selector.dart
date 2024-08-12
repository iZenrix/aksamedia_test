import 'package:arkatama_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:flutter/material.dart';

class ProductOptionSelector extends StatelessWidget {
  final int selectedSize;
  final int selectedColor;
  final Function(int) onSizeSelected;
  final Function(int) onColorSelected;

  const ProductOptionSelector({
    super.key,
    required this.selectedSize,
    required this.selectedColor,
    required this.onSizeSelected,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
          color: const Color(0xffE2E8F0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LabelText(text: 'Ukuran'),
            const SizedBox(height: 8),
            SizeSelector(
              selectedSize: selectedSize,
              onSizeSelected: onSizeSelected,
            ),
            const SizedBox(height: 14),
            const LabelText(text: 'Warna'),
            const SizedBox(height: 8),
            ColorSelector(
              selectedColor: selectedColor,
              onColorSelected: onColorSelected,
            ),
            const SizedBox(height: 14),
            RichText(
              text: TextSpan(
                children: [
                  buildTextSpan(
                    text: 'Stok : ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff242626),
                        ),
                  ),
                  buildTextSpan(
                    text: '99+ pcs',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff242626),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;

  const LabelText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

TextSpan buildTextSpan({
  required String text,
  required TextStyle style,
  FontWeight? fontWeight,
  Color color = const Color(0xff242626),
}) {
  return TextSpan(
    text: text,
    style: style,
  );
}
