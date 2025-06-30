import 'package:get/get.dart';
import 'package:sakhi_sali/Constant/app_images.dart';
import 'package:sakhi_sali/Constant/app_strings.dart';

class NotificationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List<String> tabs = ['All', 'Health Tips', 'Reminders', 'Updates'];

  // notification card items
  final List<Map<String, dynamic>> notificationCardItem = [
    {
      'image': AppImages().stretchRelieveIcon,
      'title': AppStrings().notifStretchTitle,
      'subtitle': AppStrings().notifStretchDesc,
      'time': AppStrings().notifStretchTime,
    },
    {
      'image': AppImages().hyderationIcon,
      'title': AppStrings().notifHydrationTitle,
      'subtitle': AppStrings().notifHydrationDesc,
      'time': AppStrings().notifHydrationTime,
    },
    {
      'image': AppImages().wellnessTipsIcon,
      'title': AppStrings().notifWellnessTitle,
      'subtitle': AppStrings().notifWellnessDesc,
      'time': AppStrings().notifWellnessTime,
    },
    {
      'image': AppImages().sleepScheduleIcon,
      'title': AppStrings().notifSleepTitle,
      'subtitle': AppStrings().notifSleepDesc,
      'time': AppStrings().notifSleepTime,
    },
  ];
}
