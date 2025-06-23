import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/auth/otp/verify_otp_controller.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyOtpController controller = Get.put(VerifyOtpController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages().authBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  spaceVertical276,
                  Text(
                    AppStrings().enterOtp,
                    style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                      fontSize: 24,
                      color: AppColors.black,
                    ),
                  ),
                  spaceVertical5,
                  Text(
                    AppStrings().enterOtpSubtitle,
                    style: AppTextStyles().robotoRegularStyle.copyWith(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  spaceVertical25,

                  // CustomTextFormField(
                  //   hintText: AppStrings().emailAddress,
                  //   controller: controller.forgotPasswordController,
                  //   isPassword: false,
                  // ),
                  OtpTextField(
                    numberOfFields: 6,
                    borderColor: AppColors.black,
                    focusedBorderColor: AppColors.primaryRed,
                    // styles: controller,
                    showFieldAsBox: true,
                    borderWidth: 2.0,
                    borderRadius: BorderRadius.circular(8),
                    fieldWidth: 45.w,
                    fieldHeight: 60.h,
                    fillColor: AppColors.white,
                    filled: true,

                    onCodeChanged: (String code) {
                      // Can use this for live validation
                    },
                    onSubmit: (String code) {
                      controller.updateOtp(code);
                    },
                  ),
                  spaceVertical25,

                  PrimaryButton(
                    title: AppStrings().verifyOtp,
                    onTap: () {},
                    suffixIcon: Image.asset(
                      AppImages().sendIcon,
                      color: AppColors.white,
                    ),
                  ),
                  spaceVertical250,
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings().didNotReceiveCode,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              color: AppColors.darkGrey,
                              fontSize: 14,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().resend,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              color: AppColors.primaryRed,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
