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
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Komisi',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xff363939),
                    ),
              ),
              TextSpan(
                text: ' Rp35.600',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xff363939),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                    ),
              ),
              TextSpan(
                text: ' (20%)',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff363939),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
