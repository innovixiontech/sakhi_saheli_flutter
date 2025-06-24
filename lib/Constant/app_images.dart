class AppImages {
  static final AppImages instance = AppImages._internal();

  factory AppImages() {
    return instance;
  }

  AppImages._internal();

  // images
  final String authBg = "assets/images/auth_bg.png";
  final String googleIcon = "assets/icons/google_icon.png";
  final String appleIcon = "assets/images/apple_icon.png";
  final String facebookIcon = "assets/images/facebook_icon.png";

  //icons
  final String sendIcon = "assets/icons/send_icon.png";
  final String calendarIcon = "assets/icons/calendar_icon.png";
  final String periodIcon = "assets/icons/period_icon.png";
  final String fertilityIcon = "assets/icons/fertility_icon.png";
  final String pregnancyIcon = "assets/icons/pregnancy_icon.png";
  final String symptomsIcon = "assets/icons/symptoms_icon.png";
  final String moonIcon = "assets/icons/moon_icon.png";
  final String flowIcon = "assets/icons/flow_icon.png";
  final String moodIcon = "assets/icons/mood_icon.png";
  final String medicineIcon = "assets/icons/medicine_icon.png";
}
