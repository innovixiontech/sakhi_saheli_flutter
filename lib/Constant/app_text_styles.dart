import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._internal();

  static final AppTextStyles _instance = AppTextStyles._internal();

  factory AppTextStyles() => _instance;

  // common

  final TextStyle authTitleStyle =  TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.sp,
    // letterSpacing: 5.25,
    fontWeight: FontWeight.w600,
    color: AppColors().black
  );
  final TextStyle textFormFieldHintStyle =  TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  // playfair font

  final TextStyle playFairSemiBold = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors().white,
  );

  final TextStyle playFairBold = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    color: AppColors().white,
  );

  // roboto font

  final TextStyle robotoLightStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    color: AppColors().white,
  );

  final TextStyle robotoRegularStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.25.sp,
    fontWeight: FontWeight.w400,
    color: AppColors().darkGrey,
  );

  final TextStyle robotoMediumStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors().black,
  );

  final TextStyle robotoSemiBoldStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 17.5.sp,
    fontWeight: FontWeight.w600,
    color: AppColors().white,
  );
}
