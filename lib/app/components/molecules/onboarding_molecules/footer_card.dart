import 'package:arkatama_test/app/components/atoms/primary_button.dart';
import 'package:arkatama_test/app/components/atoms/text/body_text.dart';
import 'package:arkatama_test/app/components/atoms/text/headline_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterCard extends StatelessWidget {
  final String title;
  final String description;
  final String textButton;
  final Function() onPressed;

  const FooterCard({
    super.key,
    required this.title,
    required this.description,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        width: Get.width,
        height: Get.height * 0.32,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadlineSmallText(
              text: title,
              weight: FontWeight.w700,
              color: const Color(0xff242626),
              alignment: TextAlign.center,
            ),
            const SizedBox(height: 18),
            BodySmallText(
              text: description,
              color: const Color(0xff242626),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
            PrimaryButton(
              height: 40,
              text: textButton,
              onPressed: onPressed,
              foregroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
