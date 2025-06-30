import 'package:sakhi_sali/Import/custom_import.dart';

class PmsYogaPosesController extends GetxController {
  // yogaPoses list

  List<Map<String, dynamic>> yogaPosesList = [
    {
      "title": AppStrings().poseCatCow,
      'subtitle': AppStrings().descCatCow,
      'image': AppImages().catCowPoseImage,
      'duration': AppStrings().durationCatCow,
      "level": AppStrings().levelBeginner,
    },
    {
      "title": AppStrings().poseForwardFold,
      'subtitle': AppStrings().descForwardFold,
      'image': AppImages().forwordFoldPoseImage,
      'duration': AppStrings().durationForwardFold,
      "level": AppStrings().levelIntermediate,
    },
    {
      "title": AppStrings().poseButterfly,
      'subtitle': AppStrings().descButterfly,
      'image': AppImages().butterflyPoseImage,
      'duration': AppStrings().durationButterfly,
      "level": AppStrings().levelBeginner,
    },
  ];
}
