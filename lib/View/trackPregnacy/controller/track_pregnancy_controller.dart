import 'package:sakhi_sali/Import/custom_import.dart';

class PregnancyController extends GetxController {
  // health tips list
  RxDouble progressPercent = 0.75.obs; // 75%
  RxString dateRange = 'March 15 - March 21'.obs;
  final List<Map<String, dynamic>> healthTipList = [
    {
      "image": AppImages().nutritionGuidelinesImage,
      'title': AppStrings().nutritionTipTitle,
      'subtitle': AppStrings().nutritionTipDesc,
    },
    {
      "image": AppImages().safeExerciseImage,
      'title': AppStrings().safeExerciseTipTitle,
      'subtitle': AppStrings().safeExerciseTipDesc,
    },
    {
      "image": AppImages().medicalCheckupsImage,
      'title': AppStrings().medicalCheckupTipTitle,
      'subtitle': AppStrings().medicalCheckupTipDesc,
    },
  ];
}
