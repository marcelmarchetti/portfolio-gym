import 'package:flutter/material.dart';
import 'package:portfolio_marcel_gym/core/constants/app_colors.dart';

class AppThemes{
  static final mainTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    useMaterial3: true,
    fontFamily: 'Poppins'
  );
}