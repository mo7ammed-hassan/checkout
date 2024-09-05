import 'package:flutter/material.dart';

class LeftOrRightCustomCircleAvatar extends StatelessWidget {
  const LeftOrRightCustomCircleAvatar({
    super.key,
    required this.isLeft,
  });
  final bool isLeft;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * 0.2,
      left: isLeft ? -20 : null,
      right: !isLeft ? -20 : null,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
