import "package:sakhi_sali/Constant/app_validation.dart";
import "package:sakhi_sali/Import/custom_import.dart";

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key}) {}

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    final TextFieldController textFieldController = Get.put(
      TextFieldController(),
    );
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
                    AppStrings().emailOrPhone,
                    style: AppTextStyles().robotoMediumStyle,
                  ),
                  spaceVertical5,
                  CustomTextFormField(
                    hintText: AppStrings().enterEmailOrPhone,
                    controller: controller.emailController,
                    isPassword: false,
                  ),
                  spaceVertical25,
                  Text(
                    AppStrings().password,
                    style: AppTextStyles().robotoMediumStyle,
                  ),
                  spaceVertical5,

                  CustomTextFormField(
                    hintText: AppStrings().enterPassword,
                    controller: controller.passwordController,
                    isPassword: true,
                  ),

                  spaceVertical25,
                  PrimaryButton(
                    title: AppStrings().login,
                    onTap: () {
                      final email = controller.emailController.text;

                      if (!email.isValidEmail()) {
                        Get.snackbar("Oops!", "Enter a valid email address");
                        return;
                      }
                    },
                  ),
                  spaceVertical25,
                  OrContinueWithText(),
                  spaceVertical25,
                  PrimaryButton(
                    icon: Image.asset(
                      AppImages().googleIcon,
                      color: AppColors().white,
                    ),
                    title: AppStrings().google,
                    onTap: () {},
                  ),
                  spaceVertical20,
                  Center(
                    child: Text(
                      AppStrings().forgotPassword,
                      style: AppTextStyles().robotoMediumStyle.copyWith(
                        color: AppColors().primaryRed,
                      ),
                    ),
                  ),
                  spaceVertical20,
                  GestureDetector(
                    onTap: () => Get.offNamed(RouteName.signUp),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings().dontHaveAccount,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              color: AppColors().darkGrey,
                            ),
                          ),
                          spaceHorizontal5,
                          Text(
                            AppStrings().signUpNow,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              color: AppColors().primaryRed,
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
