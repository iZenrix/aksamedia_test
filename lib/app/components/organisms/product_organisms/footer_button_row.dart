import 'package:aksamedia_test/app/components/atoms/primary_button.dart';
import 'package:aksamedia_test/app/components/atoms/text/label_text.dart';
import 'package:flutter/material.dart';

class FooterButtonRow extends StatelessWidget {
  final VoidCallback onPrimaryPressed;
  final VoidCallback onIconPressed;

  const FooterButtonRow({
    super.key,
    required this.onPrimaryPressed,
    required this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: PrimaryButton(
              height: 40,
              backgroundColor: const Color(0xffFFFFFF),
              borderRadius: 10,
              borderSide: const BorderSide(
                color: Color(0xff242626), // Border color
                width: 1, // Border width
              ),
              padding: EdgeInsets.zero,
              onPressed: () {},
              widget: const LabelLargeText(
                text: 'Tambahkan ke toko',
                color: Color(0xff242626),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: PrimaryButton(
              onPressed: () {},
              backgroundColor: const Color(0xff242626),
              foregroundColor: const Color(0xffffffff),
              borderRadius: 10,
              widget: Image.asset(
                'assets/images/product/icons/shopping-cart.png',
                width: 20, // Icon width
                height: 20, // Icon height
              ),
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
