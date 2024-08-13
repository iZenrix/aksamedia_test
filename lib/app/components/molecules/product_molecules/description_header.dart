import 'package:arkatama_test/app/components/atoms/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DescriptionHeader extends StatelessWidget {
  const DescriptionHeader({super.key, required this.textCopy});

  final String textCopy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleMediumText(
          text: 'Deskripsi',
          color: Color(0xff242626),
        ),
        GestureDetector(
          onTap: () {
            Clipboard.setData(
              ClipboardData(
                text: textCopy,
              ),
            );
            Get.snackbar(
              'Berhasil',
              'Deskripsi berhasil disalin',
              snackPosition: SnackPosition.TOP,
              backgroundColor: const Color(0xffECE806),
              colorText: const Color(0xff000000),
            );
          },
          child: Image.asset(
            'assets/images/product/icons/copy-icon.png',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
