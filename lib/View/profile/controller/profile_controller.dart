import 'package:sakhi_sali/Import/custom_import.dart';

class ProfileController extends GetxController {
  // itemList
  List<Map<String, dynamic>> pfItemList = [
    {"image": AppImages().starIcon, "title": AppStrings().achieveItem1},
    {"image": AppImages().favouriteIcon, "title": AppStrings().achieveItem2},
    {"image": AppImages().crownIcon, "title": AppStrings().achieveItem3},
  ];

  final List<Map<String, dynamic>> wellnessLogItems = [
    {
      'icon': Icons.check,
      'title': 'Completed morning wellness check',
      'subtitle': 'Today, 8:30 AM',
    },
    {
      'icon': Icons.e_mobiledata,
      'title': 'Achieved weekly meditation goal',
      'subtitle': 'Yesterday, 9:15 PM',
    },
  ];
}
