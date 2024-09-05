import 'package:checkout/Features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});
  static List<String> paymentMethodsItem = [
    'assets/icons/payment_crad.svg',
    'assets/icons/paypal.svg',
    'assets/icons/pay.svg'
  ];

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PaymentMethodsListView.paymentMethodsItem.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentMethodItem(
              isActive: activeIndex == index,
              imageUrl: PaymentMethodsListView.paymentMethodsItem[index],
            ),
          ),
        ),
      ),
    );
  }
}
