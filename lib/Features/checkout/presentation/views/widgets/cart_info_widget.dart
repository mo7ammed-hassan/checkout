import 'package:checkout/core/utils/app_style.dart/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartInfoWidget extends StatelessWidget {
  const CartInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/master_cart.svg'),
          const SizedBox(width: 23),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'Credit Card\n', style: Styles.style18),
                    TextSpan(text: 'Mastercard **78', style: Styles.style16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
