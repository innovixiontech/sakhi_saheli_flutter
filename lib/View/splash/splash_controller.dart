import 'package:get/get.dart';
import 'package:sakhi_sali/Routes/routeName.dart';
class SplashController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 4),(){
      Get.offNamed(RouteName.login);
    });
  }
}