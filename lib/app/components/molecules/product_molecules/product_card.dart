import 'package:arkatama_test/app/components/atoms/custom_bottom_sheet.dart';
import 'package:arkatama_test/app/components/atoms/primary_button.dart';
import 'package:arkatama_test/app/components/atoms/text/body_text.dart';
import 'package:arkatama_test/app/components/atoms/text/label_text.dart';
import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:arkatama_test/app/features/product/helper/badge_clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff0EA5E9).withOpacity(0.8),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '30% ',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: const Color(0xffFFFFFF),
                              fontSize: 10,
                            ),
                      ),
                      TextSpan(
                        text: 'Komisi',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: const Color(0xffFFFFFF),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
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
                    child: const LabelSmallText(
                      text: 'New',
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: LabelMediumText(
                text: title,
                color: const Color(0xff000000),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: Get.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BodySmallText(
                        text: 'Harga Reseller',
                        fontSize: 10,
                        color: Color(0xff697170),
                      ),
                      TitleSmallText(
                        text: price,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff16A34A),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/product/icons/shop-icon.png',
                          width: 12,
                          height: 12,
                        ),
                        const BodySmallText(
                          text: ' 99+ pcs',
                          fontSize: 10,
                          color: Color(0xff697170),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            PrimaryButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomBottomSheet();
                  },
                );
              },
              width: 160,
              height: 32,
              borderRadius: 6,
              fontWeight: FontWeight.w500,
              widget: const BodySmallText(
                text: 'Bagikan Produk',
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
