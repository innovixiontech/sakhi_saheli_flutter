import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._internal();

  static final AppTextStyles _instance = AppTextStyles._internal();

  factory AppTextStyles() => _instance;

  // common

  final TextStyle authTitleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24,
    // letterSpacing: 5.25,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  final TextStyle textFormFieldHintStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // playfair font
  // (600)
  final TextStyle playFairSemiBold = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  //700
  final TextStyle playFairBold = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  // roboto font
  //300
  final TextStyle robotoLightStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );

  //400
  final TextStyle robotoRegularStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.25,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGrey,
  );
  //500
  final TextStyle robotoMediumStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  //600
  final TextStyle robotoSemiBoldStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 17.5,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  // Pacifico 400
  final TextStyle pacificoRegularStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.darkenGrey,
  );
}
