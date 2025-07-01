import 'package:sakhi_sali/Import/custom_import.dart';

class PeriodCareGuideScreen extends StatelessWidget {
  final PeriodCareGuideController controller = Get.put(
    PeriodCareGuideController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBgColor,
      appBar: CustomAppBar(
        title: Text(AppStrings().periodCareTitle),
        backgroundColor: AppColors.white,
        leadingIcon: Icon(Icons.arrow_back),
        // Image.asset(AppImages().backIcon),
        onLeadingTap: Get.back,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tabs (Static)
              SizedBox(
                height: 80.h,
                child: Padding(
                  padding: EdgeInsets.all(16.0.w),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.guideTabs.length,
                    itemBuilder: (context, index) {
                      final tab = controller.guideTabs[index];
                      return Row(
                        children: [
                          CareGuideTab(
                            label: tab['label'],
                            icon: tab['icon'],
                            isSelected:
                                index ==
                                controller.selectedIndex, // optional selection
                          ),
                          spaceHorizontal16,
                        ],
                      );
                    },
                  ),
                ),
              ),

              /// Title Card
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 96.h,
                      width: 96.h,
                      child: Image.asset(AppImages().headacheImage),
                    ),
                    spaceHorizontal12,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings().headache,
                            style: AppTextStyles().robotoMediumStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          spaceVertical8,
                          Text(
                            AppStrings().headacheInfo,
                            style: AppTextStyles().textFormFieldHintStyle
                                .copyWith(color: AppColors.darkGrey),
                            maxLines: 4,
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              spaceVertical16,

              /// Tips List
              Expanded(
                child: ListView.builder(
                  itemCount: controller.tips.length,
                  itemBuilder: (context, index) {
                    final tip = controller.tips[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(tip['icon'], color: AppColors.pinkColor),
                              spaceHorizontal12,
                              Text(
                                tip['title'],
                                style: AppTextStyles().robotoMediumStyle,
                              ),
                            ],
                          ),
                          spaceVertical12,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tip['description'],
                                maxLines: 4,
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              /// Symptom Tracker
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          AppStrings().symptomTitle,
                          style: AppTextStyles().robotoMediumStyle,
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              AppStrings().painLevel,
                              style: AppTextStyles().textFormFieldHintStyle
                                  .copyWith(color: AppColors.darkGrey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: List.generate(5, (index) {
                                final level = index + 1;
                                return Obx(() {
                                  bool isSelected =
                                      controller.selectedPainLevel.value ==
                                      level;
                                  return GestureDetector(
                                    onTap: () =>
                                        controller.selectedPainLevel.value =
                                            level,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0.h),
                                      child: Material(
                                        elevation: isSelected ? 5 : 1,
                                        shadowColor: AppColors.pinkColor,
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                        child: Container(
                                          width: 32.w,
                                          height: 32.w,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? AppColors.pink300
                                                : AppColors.whiteGreyest,
                                            borderRadius: BorderRadius.circular(
                                              8.r,
                                            ),
                                          ),
                                          child: Text(
                                            '$level',
                                            style: TextStyle(
                                              color: isSelected
                                                  ? AppColors.white
                                                  : AppColors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                });
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
