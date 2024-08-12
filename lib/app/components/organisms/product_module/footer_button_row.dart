import 'package:arkatama_test/app/features/onboarding/view/atoms/primary_button.dart';
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
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PrimaryButton(
              height: 40,
              backgroundColor: const Color(0xffFFFFFF),
              foregroundColor: const Color(0xff242626),
              borderRadius: 10,
              text: 'Tambahkan ke toko',
              borderSide: const BorderSide(
                color: Color(0xff242626), // Border color
                width: 1, // Border width
              ),
              padding: EdgeInsets.zero,
              onPressed: () {},
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
              widget: const Icon(
                Icons.shopping_cart,
                size: 20,
              ),
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
