import "package:sakhi_sali/Import/custom_import.dart";
import "package:sakhi_sali/View/auth/forgotPassword/forgot_password_screen.dart";
import "package:sakhi_sali/View/auth/otp/verify_otp_screen.dart";

class AppRoutes {
  static appRoute() => [
    GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
    GetPage(name: RouteName.login, page: () => LoginScreen()),
    GetPage(name: RouteName.signUp, page: () => SignupScreen()),
    GetPage(name: RouteName.forgotPassword, page: () => ForgotPassword()),
    GetPage(name: RouteName.otpVerification, page: () => VerifyOtpScreen()),
    // GetPage(name: RouteName.bottomBar, page: () => Bottomnav()),
    // GetPage(name: RouteName.categoryPage, page: () => CategoryPage()),
    // GetPage(name: RouteName.profilePage, page: () => Profile()),
    // GetPage(
    //     name: RouteName.accountDetails, page: () => AccountDetailsPage()),
    // GetPage(name: RouteName.productDetails, page: () => ProductDetails()),
  ];
}
