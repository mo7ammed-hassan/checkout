import 'package:checkout/core/utils/app_style.dart/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({ final String? title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: Styles.style25,
      ),
      leading: Center(
        child: SvgPicture.asset(
          'assets/icons/arrow_back.svg',
        ),
      ),
    );
  }