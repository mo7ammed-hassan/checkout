import 'package:checkout/core/utils/app_style.dart/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.price, required this.title});
  final String  title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        Text(
          '\$$price',
          style: Styles.style24,
        ),
      ],
    );
  }
}
