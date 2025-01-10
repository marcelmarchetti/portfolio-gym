import 'package:flutter/material.dart';
import 'package:portfolio_marcel_gym/core/constants/app_colors.dart';

class AppStyles{

  static TextStyle getButtonTextStyle(Color textColor){
    return TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 16);
  }

  static TextStyle getTextFromFieldTextStyle(bool hasFocus){
    return TextStyle(
        color: hasFocus ? AppColors.onSecondaryContainer : AppColors.secondaryText,
        fontWeight: FontWeight.w400
    );
  }

}