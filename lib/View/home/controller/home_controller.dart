import 'package:sakhi_sali/Import/custom_import.dart';

class HomeController extends GetxController {
  // itemList
  List<Map<String, dynamic>> itemList = [
    {"image": AppImages().periodIcon, "title": AppStrings().period},

    {"image": AppImages().symptomsIcon, "title": AppStrings().symptoms},

    {"image": AppImages().fertilityIcon, "title": AppStrings().fertility},

    {"image": AppImages().pregnancyIcon, "title": AppStrings().pregnancy},
  ];
  // insightsList
  List<Map<String, dynamic>> insightsList = [
    {
      "image": AppImages().moonIcon,
      'title': AppStrings().sleepQuality,
      'subtitle': AppStrings().sleepQualityDesc,
    },
    {
      "image": AppImages().moonIcon,
      'title': AppStrings().sleepQuality,
      'subtitle': AppStrings().sleepQualityDesc,
    },
    {
      "image": AppImages().moonIcon,
      'title': AppStrings().sleepQuality,
      'subtitle': AppStrings().sleepQualityDesc,
    },
  ];

  // Quick Log List

  List<Map<String, dynamic>> quickLogList = [
    {'image': AppImages().flowIcon, 'title': AppStrings().flow},
    {'image': AppImages().moonIcon, 'title': AppStrings().mood},
    {'image': AppImages().medicineIcon, 'title': AppStrings().medicine},
  ];
}
