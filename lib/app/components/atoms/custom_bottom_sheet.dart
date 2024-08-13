import 'package:arkatama_test/app/components/atoms/custom_divider.dart';
import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: Get.height * 0.36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.close,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(width: 10),
              const TitleSmallText(
                text: 'Bagikan Produk',
                color: Color(0xff000000),
              ),
            ],
          ),
          const SizedBox(height: 15),
          ListTile(
            title: const TitleSmallText(
              text: 'Teks dan Link',
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
            ),
            onTap: () {
            },
            subtitle: CustomDivider(
              height: 1.5,
              width: Get.width,
              color: const Color(
                0xffE2E8F0,
              ),
            ),
          ),
          ListTile(
            title: const TitleSmallText(
              text: 'Gambar',
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
            ),
            onTap: () {

            },
            subtitle: CustomDivider(
              height: 1.5,
              width: Get.width,
              color: const Color(
                0xffE2E8F0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
