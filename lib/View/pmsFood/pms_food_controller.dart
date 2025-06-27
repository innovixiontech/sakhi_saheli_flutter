import 'package:sakhi_sali/Import/custom_import.dart';

class PmsFoodController extends GetxController {
  // category list

  List<Map<String, dynamic>> pmsFoodCategoryList = [
    {"image": AppImages().sweetsIcon, 'title': AppStrings().categorySweets},
    {"image": AppImages().greensIcon, 'title': AppStrings().categoryGreens},
    {"image": AppImages().fruitsIcon, 'title': AppStrings().categoryFruits},
    {"image": AppImages().greensIcon, 'title': AppStrings().categoryGrains},
  ];

  //food list
  List<Map<String, dynamic>> pmsFoodList = [
    {
      "image": AppImages().chocolateImage,
      'title': AppStrings().foodDarkChocolateTitle,
      'subtitle': AppStrings().foodDarkChocolateDesc,
    },
    {
      "image": AppImages().leafyGreensImage,
      'title': AppStrings().foodLeafyGreensTitle,
      'subtitle': AppStrings().foodLeafyGreensDesc,
    },
    {
      "image": AppImages().mixedBerriesImage,
      'title': AppStrings().foodMixedBerriesTitle,
      'subtitle': AppStrings().foodMixedBerriesDesc,
    },
  ];
}
