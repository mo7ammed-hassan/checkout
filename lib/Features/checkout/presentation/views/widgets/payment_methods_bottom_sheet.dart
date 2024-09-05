import 'package:checkout/Features/checkout/presentation/views/widgets/payment_methdos_list_view.dart';
import 'package:checkout/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButton(title: 'Continue'),
        ],
      ),
    );
  }
}