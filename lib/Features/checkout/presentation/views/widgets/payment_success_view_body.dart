import 'package:checkout/Features/checkout/presentation/views/widgets/done_circle_avatar.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/left_or_right_custom_circle_avatar.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/payment_success_card.dart';
import 'package:checkout/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';


class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const PaymentSuccessCard(),
          const LeftOrRightCustomCircleAvatar(
            isLeft: true,
          ),
          const LeftOrRightCustomCircleAvatar(
            isLeft: false,
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -60,
            child: DoneCircleAvatar(),
          ),
          Positioned(
            right: 16 + 20, // default padding + raduis of CircleAvatar
            left: 16 + 20,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: const CustomDivider(),
          ),
        ],
      ),
    );
  }
}
