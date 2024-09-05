import 'package:checkout/Features/checkout/presentation/views/widgets/cart_widget.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/order_info_item_section.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:checkout/core/widgets/custom_button.dart';
import 'package:checkout/core/widgets/total_price.dart';
import 'package:flutter/material.dart';


class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 25),
          const Expanded(
            child: CartWidget(),
          ),
          const SizedBox(height: 25),
          const OrderInfoItemSection(),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xFFC6c6c6),
          ),
          const SizedBox(height: 16),
          const TotalPrice(
            title: 'Total',
            price: 50.97,
          ),
          const SizedBox(height: 16),
          CustomButton(
            title: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const PaymentMethodsBottomSheet();
                },
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}


