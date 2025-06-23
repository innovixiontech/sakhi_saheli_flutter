import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sakhi_sali/Constant/app_spaces.dart';
import 'package:sakhi_sali/Constant/app_strings.dart';
import 'package:sakhi_sali/Constant/app_text_styles.dart';
import 'package:sakhi_sali/View/splash/splash_controller.dart';
import '../../Constant/app_colors.dart';
import '../../Constant/app_images.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashController());

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark, // or light, based on background
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              AppImages().authBg, // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Main content over the background
          Scaffold(
            backgroundColor: Colors.transparent, // Important!
            // appBar: AppBar(
            //   title: Text("With Background Image"),
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            // ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Center(
                //   child: Text(
                //     'Hello, Shakhi Shali!',
                //     style: TextStyle(color: Colors.white, fontSize: 24),
                //   ),
                // ),
                Center(
                  child: Text(
                    AppStrings().appName,
                    style: AppTextStyles().playFairBold.copyWith(
                      color: AppColors.white,
                      fontSize: 36,
                    ),
                  ),
                ),
                spaceVertical15,
                Text(
                  AppStrings().tagline,
                  style: AppTextStyles().robotoLightStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                spaceVertical15,
                Center(
                  child: Text(
                    AppStrings().loadingText,
                    style: AppTextStyles().robotoLightStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),

                spaceVertical70,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
