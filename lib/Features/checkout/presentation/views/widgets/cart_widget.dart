import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 277 / 424,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate proportional positions based on container size
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;
          double item1Left = containerWidth * 0.216; // 60 / 277
          double item1Bottom = containerHeight * 0.176; // 75 / 424
          double item2Right = containerWidth * 0.209; // 58 / 277
          double item2Bottom = containerHeight * 0.377; // 160 / 424
          double item3Left = containerWidth * 0.187; // 52 / 277
          double item3Top = containerHeight * 0.2; // 85 / 424
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/cart.png'),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: item1Bottom,
                  left: item1Left,
                  child: Image.asset('assets/images/item1.png'),
                ),
                Positioned(
                  right: item2Right,
                  bottom: item2Bottom,
                  child: Image.asset(
                    'assets/images/item2.png',
                  ),
                ),
                Positioned(
                  top: item3Top,
                  left: item3Left,
                  child: Image.asset('assets/images/item3.png'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
