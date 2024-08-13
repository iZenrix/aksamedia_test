import 'package:arkatama_test/app/components/atoms/text/body_text.dart';
import 'package:arkatama_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;

  const DescriptionSection({
    super.key,
    required this.isExpanded,
    required this.onToggle,
  });

  final String description = '*New Material*\n'
      'Terbuat dari bahan 100% Katun Linen yang\n'
      'membuat nyaman jika digunakan.\n'
      'Menggunakan fit Relaxed Fit.\n'
      '-\n'
      'SIZE CHART RELAXED SHIRT....\n'
      '-\n'
      'Detail tambahan:\n'
      '- Tersedia dalam berbagai ukuran dari S hingga XL.\n'
      '- Tersedia dalam berbagai warna: Putih, Hitam, Abu-abu, dan Biru Navy.\n'
      '- Memiliki ketahanan warna yang baik meskipun dicuci berulang kali.\n'
      '- Material yang ramah lingkungan dan mudah didaur ulang.\n'
      '- Jahitan yang kuat dan rapi untuk ketahanan jangka panjang.\n'
      '- Desain yang modern dan stylish cocok untuk berbagai kesempatan.';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xffE2E8F0),
            width: 1,
          ),
        ),
      ),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionHeader(
              textCopy: description,
            ),
            const SizedBox(height: 8.0),
            BodyMediumText(
              text: description,
              color: const Color(0xff000000),
              maxLines: isExpanded ? 20 : 6,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            ToggleButton(
              isExpanded: isExpanded,
              onTap: onToggle,
            ),
          ],
        ),
      ),
    );
  }
}
