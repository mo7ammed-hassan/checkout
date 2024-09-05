import 'package:checkout/Features/checkout/presentation/views/widgets/cart_view_body.dart';
import 'package:checkout/core/widgets/build_app_bar.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const CartViewBody(),
    );
  }

  
}
