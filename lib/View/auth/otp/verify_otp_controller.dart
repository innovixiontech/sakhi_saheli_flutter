import 'package:sakhi_sali/Import/custom_import.dart';

class VerifyOtpController extends GetxController {
  RxString enteredOtp = ''.obs;

  void updateOtp(String value) {
    enteredOtp.value = value;
  }
}
