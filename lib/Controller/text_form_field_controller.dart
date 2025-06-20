import 'package:get/get.dart';

class TextFieldController extends GetxController {
  bool isPasswordVisible = false;

  void toggleVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }
}
