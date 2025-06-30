import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/pmsYoga/controller/pms_yoga_poses_controller.dart';

class PmsYogaPoses extends StatelessWidget {
  const PmsYogaPoses({super.key});

  @override
  Widget build(BuildContext context) {
    PmsYogaPosesController controller = Get.put(PmsYogaPosesController());
    final yogaPosesList = controller.yogaPosesList;

    return Scaffold(
      backgroundColor: AppColors.screenBgColor1,
      appBar: CustomAppBar(
        title: Text(
          AppStrings().pmsYogaTitle,
          style: AppTextStyles().robotoMediumStyle.copyWith(fontSize: 17),
        ),
        trailingIcon: Icon(Icons.share, color: AppColors.black, size: 28),
        onTrailingTap: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVertical20,
            Center(
              child: Container(
                height: 381.h,
                width: 343.2,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(AppImages().childPoseImage),
                    ),
                    spaceVertical15,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            AppStrings().poseChild,
                            style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                              color: AppColors.black,
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 4,
                              // vertical: 8,
                            ),
                            height: 27.h,
                            width: 80.h,
                            decoration: BoxDecoration(
                              color: AppColors.lightSuccessGreen,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                AppStrings().levelBeginner,
                                style: AppTextStyles().robotoRegularStyle
                                    .copyWith(color: AppColors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    spaceVertical10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        AppStrings().descChild,
                        style: AppTextStyles().robotoRegularStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    spaceVertical15,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset(AppImages().clockIcon),
                          spaceHorizontal5,
                          Text(
                            AppStrings().durationChild,
                            style: AppTextStyles().robotoRegularStyle,
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            height: 37.h,
                            width: 117.w,
                            decoration: BoxDecoration(
                              color: AppColors.primaryRed,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                AppStrings().startPractice,
                                style: AppTextStyles().robotoRegularStyle
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spaceVertical25,
            Expanded(
              child: ListView.builder(
                itemCount: controller.yogaPosesList.length,
                itemBuilder: (context, index) {
                  final pose = yogaPosesList[index];
                  final String level = pose['level'];
                  final bool isBeginner = level == AppStrings().levelBeginner;

                  final Color levelBgColor = isBeginner
                      ? AppColors.lightSuccessGreen
                      : const Color(0xFFFEF9C3);

                  final Color levelTextColor = isBeginner
                      ? AppColors.green
                      : const Color(0xFF854D0E);
                  return Center(
                    child: Container(
                      margin: EdgeInsetsGeometry.only(bottom: 20),

                      height: 138.h,
                      width: 343.2.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 8),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                              bottom: 15,
                              right: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 96.h,
                                  width: 96.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        yogaPosesList[index]['image'],
                                      ),
                                    ),
                                  ),
                                ),
                                spaceHorizontal10,
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            yogaPosesList[index]['title'],
                                            style: AppTextStyles()
                                                .robotoSemiBoldStyle
                                                .copyWith(
                                                  fontSize: 12,
                                                  color: AppColors.black,
                                                ),
                                          ),
                                          Spacer(),

                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 1,
                                              vertical: 2,
                                            ),
                                            height: 27.h,
                                            width: 91.h,
                                            decoration: BoxDecoration(
                                              color: levelBgColor,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text(
                                                level,
                                                style: AppTextStyles()
                                                    .robotoRegularStyle
                                                    .copyWith(
                                                      color: levelTextColor,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      spaceVertical5,
                                      Text(
                                        yogaPosesList[index]['subtitle'],
                                        style:
                                            AppTextStyles().robotoRegularStyle,
                                        maxLines: 2,
                                        softWrap: true, // optional, but helps

                                        overflow: TextOverflow
                                            .ellipsis, // yeh optional hai agar maxLines fix hai
                                      ),
                                      spaceVertical10,
                                      Row(
                                        children: [
                                          Image.asset(AppImages().clockIcon),
                                          spaceHorizontal5,
                                          Text(
                                            yogaPosesList[index]['duration'],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: AppTextStyles()
                                                .robotoRegularStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
