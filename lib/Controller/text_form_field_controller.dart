import 'package:sakhi_sali/Import/custom_import.dart';

class TextFieldController extends GetxController {
  bool isPasswordVisible = false;

  void toggleVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }
}
