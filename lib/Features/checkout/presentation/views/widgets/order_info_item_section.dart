import 'package:checkout/Features/checkout/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrderInfoItemSection extends StatelessWidget {
  const OrderInfoItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderItem(
          title: 'Discount',
          value: r'$42.97',
        ),
        SizedBox(height: 3),
        OrderItem(
          title: 'Order Subtotal',
          value: r'$0',
        ),
        SizedBox(height: 3),
        OrderItem(
          title: 'Shipping',
          value: r'$8',
        ),
      ],
    );
  }
}
