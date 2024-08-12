import 'package:arkatama_test/app/features/onboarding/view/atoms/primary_button.dart';
import 'package:arkatama_test/app/features/product/helper/badge_clipper.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool isNew;
  final String commission;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isNew = false,
    this.commission = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 6,
                left: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xff0EA5E9).withOpacity(0.8),
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '30% ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Komisi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight:
                            FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (isNew)
              Positioned(
                top: 0,
                right: 7,
                child: ClipPath(
                  clipper: BadgeClipper(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Color(0xffECE806),
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    width: 32,
                    height: 32,
                    child: const Text(
                      'New',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Harga Reseller',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff848C8B),
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff848C8B),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                      size: 12,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '99+ pcs',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0EA5E9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4),
            PrimaryButton(
              onPressed: () {},
              text: 'Bagikan Produk',
              width: 160,
              height: 32,
              borderRadius: 6,
              fontWeight: FontWeight.w500,
              foregroundColor: const Color(0xffffffff),
            ),
          ],
        ),
      ],
    );
  }
}
