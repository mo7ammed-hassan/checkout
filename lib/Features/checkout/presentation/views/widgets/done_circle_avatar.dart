import 'package:flutter/material.dart';

class DoneCircleAvatar extends StatelessWidget {
  const DoneCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xFFD9D9D9),
      child: CircleAvatar(
        backgroundColor: const Color(0xff34A853),
        radius: 40,
        child: Center(
          child: Image.asset(
            'assets/images/done.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}