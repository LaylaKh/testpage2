import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const pageTitle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Montserrat_Alternates',
    fontWeight: FontWeight.w600,
    shadows: [
      Shadow(color: Colors.white38, blurRadius: 12, offset: Offset(0, 3)),
    ],
  );

  static const buttonTitle = TextStyle(
    color: Colors.white,
    fontSize: 20,
  );

  static const small = TextStyle(
    color: Color(0x4DFEFEFF),
    fontSize: 12,
  );

  static const smallPrimary = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );
}
