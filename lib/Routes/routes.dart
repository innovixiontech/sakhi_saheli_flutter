import 'package:get/get.dart';
import 'package:sakhi_sali/Routes/routeName.dart';

import '../View/auth/login/login_screen.dart';
import '../View/splash/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
        GetPage(name: RouteName.login, page: () => LoginScreen()),
        // GetPage(name: RouteName.signUp, page: () => Signup()),
        // GetPage(name: RouteName.bottomBar, page: () => Bottomnav()),
        // GetPage(name: RouteName.categoryPage, page: () => CategoryPage()),
        // GetPage(name: RouteName.profilePage, page: () => Profile()),
        // GetPage(
        //     name: RouteName.accountDetails, page: () => AccountDetailsPage()),
        // GetPage(name: RouteName.productDetails, page: () => ProductDetails()),
      ];
}
