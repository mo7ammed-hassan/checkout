import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, this.isActive = false, required this.imageUrl});
  final bool isActive;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.grey,
            offset: const Offset(0, 0),
            blurRadius: 4,
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isActive ? const Color(0xFF34A853) : Colors.grey,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
