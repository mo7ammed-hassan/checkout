import 'package:checkout/Features/checkout/presentation/views/widgets/cart_info_widget.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout/core/utils/app_style.dart/styles.dart';
import 'package:checkout/core/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PaymentSuccessCard extends StatelessWidget {
  const PaymentSuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(height: 42),
            const PaymentItemInfo(
              title: 'Date',
              value: '1/24/2023',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 3,
              height: 60,
            ),
            const TotalPrice(price: 50.97, title: 'Total'),
            const SizedBox(height: 30),
            const CartInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/barcode.svg'),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                  decoration: ShapeDecoration(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Color(0xff34A853),
                        width: 1.5,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.style24.copyWith(
                        color: const Color(0xff34A853),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2 / 2 - 35,
            ), //  35=>(height of row / 2 )
          ],
        ),
      ),
    );
  }
}
