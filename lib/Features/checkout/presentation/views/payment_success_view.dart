import 'package:checkout/Features/checkout/presentation/views/widgets/payment_success_view_body.dart';
import 'package:checkout/core/widgets/build_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        offset: const Offset(0, -20), // raduis of done avatrar - 5
        child: const PaymentSuccessViewBody(),
      ),
    );
  }
}
