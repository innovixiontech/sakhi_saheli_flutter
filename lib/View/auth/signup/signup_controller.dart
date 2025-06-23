import "package:sakhi_sali/Import/custom_import.dart";

class SignupController extends GetxController {
  RxBool isChecked = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // for checking and  unchecking  the checkbox

  void updateCheckBox(newBool) {
    isChecked.value = newBool;
  }
}
