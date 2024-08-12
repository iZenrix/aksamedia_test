import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommissionInfo extends StatelessWidget {
  const CommissionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 40,
      decoration: const BoxDecoration(
        color: Color(0xffECE806),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Komisi',
                style: TextStyle(
                  color: Color(0xff363939),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: ' Rp 35.000',
                style: TextStyle(
                  color: Color(0xff363939),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' (20%)',
                style: TextStyle(
                  color: Color(0xff363939),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
