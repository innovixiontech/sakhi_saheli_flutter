import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/Routes/routes.dart';
import 'package:sakhi_sali/View/home/controller/home_controller.dart';
import 'package:sakhi_sali/View/notification/notification_screen.dart';

import '../bottomNav/bottom_nav_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    final itemList = controller.itemList;
    final insightsList = controller.insightsList;
    final quickLogList = controller.quickLogList;
    final wellNessList = controller.wellNessList;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFF5F7),
        appBar: CustomAppBar(
          backgroundColor: AppColors.white,
          title: Text(
            AppStrings().dashboardTitle,
            style: AppTextStyles().robotoMediumStyle.copyWith(
              color: AppColors.black,
              fontSize: 17,
            ),
          ),
          leadingIcon: Icon(Icons.person),
          trailingIcon: Icon(Icons.notifications),
          onLeadingTap: () {
            Get.find<BottomNavController>().currentIndex.value = 3;
          },
          onTrailingTap: () {
            Get.to(() => NotificationScreen());
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => NotificationScreen()),
            // );
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                spaceVertical15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings().welcomeText,
                              style: AppTextStyles().robotoSemiBoldStyle
                                  .copyWith(
                                    color: AppColors.black,
                                    fontSize: 17.5,
                                  ),
                            ),
                            Text(
                              AppStrings().periodStartsIn,
                              style: AppTextStyles().robotoRegularStyle
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsetsGeometry.symmetric(
                            vertical: 5,
                            horizontal: 5,
                          ),
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                  0xFFFF6F61,
                                ).withOpacity(0.2), // soft reddish shadow
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: AppColors.screenBgColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "24",
                              style: AppTextStyles().robotoSemiBoldStyle
                                  .copyWith(
                                    color: AppColors.primaryRed,
                                    fontSize: 18.sp,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    spaceVertical15,
                    Obx(
                      () => Center(
                        child: Container(
                          padding: EdgeInsetsGeometry.all(16),
                          height: 73,
                          width: 343,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppStrings().currentCycle,
                                    style: AppTextStyles().robotoMediumStyle,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Day ${controller.currentDay.value} of ${controller.totalDays.value} ",
                                    style: AppTextStyles().robotoRegularStyle,
                                  ),
                                ],
                              ),
                              spaceVertical10,
                              LinearProgressIndicator(
                                value: controller.progress,
                                minHeight: 8,
                                backgroundColor: AppColors.darkGrey.withOpacity(
                                  0.3,
                                ),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.primaryRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    spaceVertical25,
                    SizedBox(
                      height: 100.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                // period care guide  screen
                                Get.toNamed(RouteName.periodCareGuideScreen);
                              }
                              if (index == 1) {
                                //Symptoms
                              }
                              if (index == 2) {
                                //Fertility Screen
                              }

                              if (index == 3) {
                                Get.toNamed(RouteName.trackPregnancyScreen);
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12.w),
                              height: 93.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  spaceVertical12,
                                  Container(
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFFF6F61).withOpacity(
                                            0.2,
                                          ), // soft reddish shadow
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                      color: AppColors.screenBgColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        itemList[index]['image'],
                                      ),
                                    ),
                                  ),
                                  spaceVertical10,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: Text(
                                      itemList[index]['title'],
                                      style: AppTextStyles().robotoRegularStyle,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    spaceVertical25,
                    Text(
                      AppStrings().todaysInsights,
                      style: AppTextStyles().robotoMediumStyle,
                    ),
                    spaceVertical15,
                    SizedBox(
                      height: 150,
                      width: 340,

                      child: ListView.builder(
                        itemCount: insightsList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 149,
                            width: 270,
                            margin: EdgeInsets.only(right: 12.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 22,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(insightsList[index]["image"]),
                                      spaceHorizontal15,
                                      Text(
                                        insightsList[index]['title'],
                                        style:
                                            AppTextStyles().robotoMediumStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    insightsList[index]['subtitle'],
                                    style: AppTextStyles().robotoRegularStyle,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    spaceVertical25,
                    Text(
                      AppStrings().quickLog,
                      style: AppTextStyles().robotoMediumStyle,
                    ),
                    spaceVertical10,
                    Container(
                      height: 95,
                      width: 343,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        height: 65,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: quickLogList.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 60,
                              width: 113,
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.screenBgColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Image.asset(
                                      quickLogList[index]['image'],
                                    ),
                                  ),
                                  spaceVertical5,
                                  Text(
                                    quickLogList[index]['title'],
                                    style: AppTextStyles().robotoRegularStyle,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    spaceVertical20,
                    Text(
                      AppStrings().wellnessTips,
                      style: AppTextStyles().robotoMediumStyle.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    spaceVertical20,
                    SizedBox(
                      height: 210,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: wellNessList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Get.toNamed(RouteName.pmsYogaPoses);
                              } else if (index == 1) {
                                Get.toNamed(RouteName.pmsFriendlyFood);
                              }
                            },
                            child: Container(
                              padding: EdgeInsetsGeometry.only(bottom: 10),
                              margin: EdgeInsetsGeometry.only(left: 10),
                              height: 210.h,
                              width: 165.w,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      wellNessList[index]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  spaceVertical10,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      wellNessList[index]['title'],
                                      style: AppTextStyles().robotoMediumStyle,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  spaceVertical5,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      wellNessList[index]['subtitle'],
                                      style: AppTextStyles().robotoRegularStyle,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    spaceVertical20,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
