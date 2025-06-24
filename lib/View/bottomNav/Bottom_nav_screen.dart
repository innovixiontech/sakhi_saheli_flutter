import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/bottomNav/bottom_nav_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final BottomNavController controller = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffEFF6FF),
      body: Obx(() => controller.screen[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xffEFF6FF),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(2),
              topRight: Radius.circular(2),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffFF6F61).withOpacity(0.08),
                blurRadius: 3,
                spreadRadius: 0.5,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              selectedItemColor: AppColors.black,
              unselectedItemColor: const Color(0xff9CA3AF),
              selectedLabelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff9CA3AF),
              ),
              onTap: (index) {
                controller.currentIndex.value = index;
              },
              items: [
                bottomNavigationItem(Icons.home_filled, 'Home', 0),
                bottomNavigationItem(Icons.calendar_today, 'Calendar', 1),
                bottomNavigationItem(Icons.bar_chart, 'Reports', 2),
                bottomNavigationItem(Icons.person, 'Profile', 3),
              ],
            ),
          ),
        );
      }),
    );
  }

  BottomNavigationBarItem bottomNavigationItem(
    dynamic icon,
    String label,
    int index,
  ) {
    final isSelected = controller.currentIndex.value == index;

    return BottomNavigationBarItem(
      icon: icon is IconData
          ? Icon(
              icon,
              size: isSelected ? 26.sp : 24.sp,
              color: isSelected
                  ? AppColors.primaryRed
                  : const Color(0xff9CA3AF),
            )
          : Image.asset(
              icon,
              height: isSelected ? 26.sp : 24.sp,
              color: isSelected
                  ? AppColors.primaryRed
                  : const Color(0xff9CA3AF),
            ),
      label: label,
    );
  }
}
