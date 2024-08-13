import 'package:aksamedia_test/app/components/atoms/custom_divider.dart';
import 'package:aksamedia_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:flutter/material.dart';

class ProductDetailSection extends StatelessWidget {
  const ProductDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProductBadge(),
              Image.asset(
                'assets/images/product/icons/share.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Align(
            alignment: Alignment.centerLeft,
            child: ProductTitle(),
          ),
          const SizedBox(height: 14),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PriceInfo(
                price: 'Rp 178.000',
                description: 'Harga Customer',
              ),
              CustomDivider(
                width: 1,
                height: 40,
              ),
              PriceInfo(
                price: 'Rp 142.400',
                description: 'Harga Reseller',
              ),
            ],
          ),
          const SizedBox(height: 14),
          const CommissionInfo(),
        ],
      ),
    );
  }
}
