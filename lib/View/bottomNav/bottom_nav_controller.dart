import 'package:sakhi_sali/Import/custom_import.dart';

class BottomNavController extends GetxController {
  final List<Widget> screen = [
    HomeScreen(),
    CalendarScreen(),
    ReportsScreen(),
    ProfileScreen(),
  ];

  RxInt currentIndex = 0.obs;
  void setCurrentIndex(RxInt index) {
    currentIndex = index;
  }
}
