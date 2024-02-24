import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomTextStyle {
  static TextStyle textStyle(double fontSize, FontWeight fontWeight,[Color? textColor]){
    return TextStyle(
      fontSize:fontSize,
      fontWeight: fontWeight,
      color: textColor ?? AppColors.dark,
    );
  }
}