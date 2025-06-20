import 'package:flutter/material.dart';

class AppColors {
  static final AppColors instance = AppColors._internal();

  factory AppColors() {
    return instance;
  }
  AppColors._internal();

  Color blue = const Color(0xFF0066FF);
  Color appBackgroundColor = const Color(0xFFEFF6FF);
  Color softWhite	 = const Color(0xFFF9FAFB);
  Color darkGrey	 = const Color(0xFF4B5563);
  Color black = const Color(0xFF000000);
  Color white = const Color(0xFFFFFFFF);
  Color green = const Color(0xFF166534);
  Color darkMaroon = const Color(0xFF9F1239);

//

// Color textColor = const Color(0xFF282828);
// Color textColor1 = const Color(0xFFbcc9f5);
// Color textColor2 = const Color(0xFF8E8E8E);
// Color borderColor = const Color(0xFFDBDBDB);
// Color borderColor1 = const Color(0xFFd9dade);
// Color borderColor2 = const Color(0xFFC4C4C4);
// Color darkGray = const Color(0xFFDDDDDD);
// Color lightGray = const Color(0xFF9B9B9B);
// Color transparent = const Color(0x00000000);
// Color hintColor = const Color(0xFF9B9B9B);
// Color hintColor1 = const Color(0xFFF4F4F4);
// Color buttonColor = const Color(0xFF3063a4);
// Color buttonDisableColor = const Color(0xFF9B9B9B).withOpacity(0.3);
// Color lightGrayUpload = const Color(0xFFFAFAFA);
// Color dividerColor = const Color(0xFFF4F2F2);
// Color backColor = const Color(0xffFBF8FF);
// Color editTextBackColor = const Color(0xfffbfcff);
// Color success = const Color(0xFFddf4e4);
// Color pending = const Color(0xFFf4f0d7);
// Color failed = const Color(0xFFfee9e4);
}
