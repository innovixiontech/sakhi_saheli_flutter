import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/auth/forgotPassword/forgot_password_controller.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordController controller = Get.put(ForgotPasswordController());
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
                    AppStrings().forgotPasswordTitle,
                    style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                      fontSize: 24,
                      color: AppColors.black,
                    ),
                  ),
                  spaceVertical5,
                  Text(
                    AppStrings().signUpSubTitle,
                    style: AppTextStyles().robotoRegularStyle.copyWith(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  spaceVertical25,
                  CustomTextFormField(
                    hintText: AppStrings().emailAddress,
                    controller: controller.forgotPasswordController,
                    isPassword: false,
                  ),
                  spaceVertical25,

                  PrimaryButton(
                    title: AppStrings().resetPassword,
                    onTap: () {},
                    suffixIcon: Image.asset(
                      AppImages().sendIcon,
                      color: AppColors.white,
                    ),
                  ),
                  spaceVertical250,
                  GestureDetector(
                    onTap: () => Get.offNamed(RouteName.login),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings().rememberPassword,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              color: AppColors.darkGrey,
                              fontSize: 14,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().login,
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
