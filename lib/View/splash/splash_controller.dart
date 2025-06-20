import "package:sakhi_sali/Import/custom_import.dart";
class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 4),(){
      Get.offNamed(RouteName.login);
    });
  }
}