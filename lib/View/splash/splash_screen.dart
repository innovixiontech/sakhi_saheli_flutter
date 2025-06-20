import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakhi_sali/Constant/app_spaces.dart';
import 'package:sakhi_sali/Constant/app_strings.dart';
import 'package:sakhi_sali/Constant/app_text_styles.dart';
import 'package:sakhi_sali/View/splash/splash_controller.dart';

import '../../Constant/app_images.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashController());

    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:  AssetImage(AppImages().authBg),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: Text(AppStrings().appName,style: AppTextStyles().playFairBold,)),
              spaceVertical15,
              Text(AppStrings().tagline,style: AppTextStyles().robotoLightStyle,),
              spaceVertical15,
              Center(child: Text(AppStrings().loadingText,style: AppTextStyles().robotoLightStyle,)),


              spaceVertical70,
            ],
          ),
        ),
      ),
    );
  }
}
