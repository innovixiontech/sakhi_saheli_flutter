import 'package:sakhi_sali/Import/custom_import.dart';

class TipModel {
  final String title;
  final String description;
  final IconData icon;

  TipModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class PeriodCareGuideController extends GetxController {
  var selectedPainLevel = 2.obs;
  var selectedIndex = 0;

  final List<Map<String, dynamic>> guideTabs = [
    {
      "label": "Headache",
      "icon": Image.asset(AppImages().headacheIcon, color: AppColors.pink300),
    },
    {
      "label": "Cramps",
      "icon": Image.asset(AppImages().crampsIcon, color: AppColors.pink300),
    },
    {
      "label": "Fatigue",
      "icon": Image.asset(AppImages().fatigueIcon, color: AppColors.pink300),
    },
  ];

  final List<String> guideLabels = [
    AppStrings().headache,
    AppStrings().cramps,
    AppStrings().fatigue,
  ];

  final List<Map<String, dynamic>> tips = [
    {
      'title': AppStrings().headache,
      'description': AppStrings().headacheInfo,
      'icon': Icons.local_drink,
    },
    {
      'title': AppStrings().restInQuiet,
      'description': AppStrings().restInQuietDesc,
      // 'icon': Icons.bedtime,
      'icon': Icons.volume_off,
    },
    {
      'title': AppStrings().coldCompress,
      'description': AppStrings().coldCompressDesc,
      'icon': Icons.ac_unit,
    },
  ];
}
