import "package:sakhi_sali/Import/custom_import.dart";
import "package:sakhi_sali/View/auth/forgotPassword/forgot_password_screen.dart";
import "package:sakhi_sali/View/auth/otp/verify_otp_screen.dart";
import "package:sakhi_sali/View/bottomNav/Bottom_nav_screen.dart";
import "package:sakhi_sali/View/notification/notification_screen.dart";
import "package:sakhi_sali/View/periodCare/period_care_guide_screen.dart";
import "package:sakhi_sali/View/pmsFood/pms_friendly_food_screen.dart";
import "package:sakhi_sali/View/pmsYoga/pms_yoga_poses_screen.dart";
import "package:sakhi_sali/View/trackPregnacy/track_pregnancy_screen.dart";

class AppRoutes {
  static appRoute() => [
    GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
    GetPage(name: RouteName.login, page: () => LoginScreen()),
    GetPage(name: RouteName.signUp, page: () => SignupScreen()),
    GetPage(name: RouteName.forgotPassword, page: () => ForgotPassword()),
    GetPage(name: RouteName.otpVerification, page: () => VerifyOtpScreen()),
    GetPage(name: RouteName.bottomBar, page: () => BottomNavScreen()),
    GetPage(
      name: RouteName.pmsFriendlyFood,
      page: () => PmsFriendlyFoodScreen(),
    ),
    GetPage(name: RouteName.pmsYogaPoses, page: () => PmsYogaPoses()),
    GetPage(
      name: RouteName.notificationScreen,
      page: () => NotificationScreen(),
    ),

    GetPage(
      name: RouteName.trackPregnancyScreen,
      page: () => TrackPregnancyScreen(),
    ),
    GetPage(
      name: RouteName.periodCareGuideScreen,
      page: () => PeriodCareGuideScreen(),
    ),

    // GetPage(name: RouteName.categoryPage, page: () => CategoryPage()),
    // GetPage(name: RouteName.profilePage, page: () => Profile()),
    // GetPage(
    //     name: RouteName.accountDetails, page: () => AccountDetailsPage()),
    // GetPage(name: RouteName.productDetails, page: () => ProductDetails()),
  ];
}
