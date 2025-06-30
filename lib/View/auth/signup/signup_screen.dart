import "package:flutter/services.dart";
import "package:sakhi_sali/Import/custom_import.dart";

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key}) {
    Get.put(TextFieldController());
  }
  SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
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

            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      spaceVertical231,
                      Text(
                        AppStrings().createAccount,
                        style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      spaceVertical10,
                      Text(
                        AppStrings().signUpSubTitle,
                        style: AppTextStyles().robotoRegularStyle.copyWith(
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      spaceVertical25,
                      CustomTextFormField(
                        hintText: AppStrings().fullName,
                        controller: controller.nameController,
                        isPassword: false,
                      ),
                      spaceVertical15,
                      CustomTextFormField(
                        hintText: AppStrings().emailAddress,
                        controller: controller.emailController,
                        isPassword: false,
                      ),
                      spaceVertical15,
                      CustomTextFormField(
                        hintText: AppStrings().password,
                        controller: controller.passwordController,
                        isPassword: true,
                      ),
                      spaceVertical15,
                      CustomTextFormField(
                        hintText: AppStrings().confirmPassword,
                        controller: controller.confirmPasswordController,
                        isPassword: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.isChecked.value,
                              onChanged: (newBool) {
                                controller.updateCheckBox(newBool);
                              },
                              checkColor: Colors.black, // Tick mark color
                              activeColor:
                                  Colors.white, // Fill color when checked
                              side: BorderSide(
                                color: Colors.white,
                              ), // Outline when not checked
                            ),
                          ),
                          Text(
                            AppStrings().agreeText,
                            style: AppTextStyles().robotoRegularStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().terms,
                            style: AppTextStyles().robotoRegularStyle.copyWith(
                              fontSize: 12,
                              color: AppColors.primaryRed,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().and,
                            style: AppTextStyles().robotoRegularStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().privacyPolicy,
                            style: AppTextStyles().robotoRegularStyle.copyWith(
                              fontSize: 12,
                              color: AppColors.primaryRed,
                            ),
                          ),
                        ],
                      ),
                      PrimaryButton(
                        title: AppStrings().signUp,
                        onTap: () {
                          Get.offNamed(RouteName.otpVerification);
                        },
                      ),
                      spaceVertical25,
                      OrContinueWithText(),
                      spaceVertical25,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PrimaryButton(
                            title: "",
                            height: 32,
                            width: 95,
                            icon: Image.asset(
                              AppImages().googleIcon,
                              color: AppColors.white,
                            ),
                            onTap: () {},
                          ),
                          spaceHorizontal10,
                          PrimaryButton(
                            title: "",
                            height: 32,
                            width: 95,
                            icon: Image.asset(
                              AppImages().appleIcon,
                              color: AppColors.white,
                            ),
                            onTap: () {},
                          ),
                          spaceHorizontal10,
                          PrimaryButton(
                            title: "",
                            height: 32,
                            width: 95,
                            icon: Image.asset(
                              AppImages().facebookIcon,
                              color: AppColors.white,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
