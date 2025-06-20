import "package:sakhi_sali/Import/custom_import.dart";

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key}) {
    Get.put(TextFieldController());
  }
  SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  spaceVertical231,
                  Text(
                    AppStrings().createAccount,
                    style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                      color: AppColors().black,
                    ),
                  ),
                  spaceVertical10,
                  Text(
                    AppStrings().signUpSubTitle,
                    style: AppTextStyles().robotoRegularStyle.copyWith(
                      color: AppColors().white,
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
                  spaceVertical15,
                  PrimaryButton(title: AppStrings().signUp, onTap: () {}),
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
                          color: AppColors().white,
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
                          color: AppColors().white,
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
                          color: AppColors().white,
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
    );
  }
}
