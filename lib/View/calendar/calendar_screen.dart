import 'package:sakhi_sali/Import/custom_import.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CalendarController controller = Get.put(CalendarController());
    final periodItemList = controller.periodStatusItems;
    final bloodDay = CalendarController.bloodDropDays;
    final periodEnd = CalendarController.periodEndDays;

    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xFFFFF5F7),
        appBar: CustomAppBar(
          backgroundColor: AppColors.white,
          title: Text(
            AppStrings().calenderTitle,
            style: AppTextStyles().robotoSemiBoldStyle.copyWith(
              color: AppColors.black,
            ),
          ),
          leadingIcon: Icon(Icons.arrow_back_rounded),
          trailingIcon: Icon(Icons.settings),
          onLeadingTap: () {
            Get.find<BottomNavController>().currentIndex.value = 0;
          },
          onTrailingTap: () {}, // todo Later add setting page
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.sp),
            child: Column(
              children: [
                Obx(
                  () => Container(
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Calendar
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TableCalendar(
                            daysOfWeekHeight: 40,
                            headerVisible: false,
                            calendarFormat: CalendarFormat.month,
                            firstDay: DateTime.utc(2020, 1, 1),
                            lastDay: DateTime.utc(2030, 12, 31),
                            focusedDay: controller.focusedDay.value,
                            selectedDayPredicate: (day) =>
                                isSameDay(controller.selectedDay.value, day),
                            onDaySelected: (selectedDay, focusedDay) {
                              controller.onDaySelected(selectedDay, focusedDay);
                            },

                            // Custom Builders
                            calendarBuilders: CalendarBuilders(
                              selectedBuilder: (context, date, _) {
                                return buildDayCell(
                                  date,
                                  isSelected: true,
                                  bloodDay: CalendarController.bloodDropDays,
                                  periodEndDay:
                                      CalendarController.periodEndDays,
                                );
                              },
                              defaultBuilder: (context, date, _) {
                                return buildDayCell(
                                  date,
                                  isSelected: false,
                                  bloodDay: CalendarController.bloodDropDays,
                                  periodEndDay:
                                      CalendarController.periodEndDays,
                                );
                              },
                            ),

                            // Styles
                            calendarStyle: CalendarStyle(
                              isTodayHighlighted: false,
                              weekendTextStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              selectedTextStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              defaultTextStyle: AppTextStyles()
                                  .textFormFieldHintStyle
                                  .copyWith(color: Colors.black),
                              selectedDecoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.primaryRed,
                                ),
                              ),
                            ),
                            daysOfWeekStyle: DaysOfWeekStyle(
                              weekendStyle: AppTextStyles().robotoMediumStyle
                                  .copyWith(color: Colors.black),
                              weekdayStyle: AppTextStyles().robotoMediumStyle
                                  .copyWith(color: AppColors.textBlack),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                spaceVertical16,
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  width: 343.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: periodItemList.length,
                        itemBuilder: (context, index) {
                          final item = periodItemList[index];
                          return SizedBox(
                            child: ListTile(
                              title: Text(
                                item['title'],
                                style: AppTextStyles().textFormFieldHintStyle
                                    .copyWith(color: AppColors.subtitleBlack),
                              ),
                              subtitle: Text(
                                item['subtitle'],
                                style: AppTextStyles().robotoMediumStyle
                                    .copyWith(fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                spaceVertical26,
                // LEGEND CARD
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Container(
                    padding: EdgeInsets.all(16.sp),
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LegendItem(
                          // color: AppColors.primaryRed,
                          icon: AppImages().bloodIcon,
                          label: AppStrings().periodStart,
                        ),
                        LegendItem(
                          icon: AppImages().periodEndIcon,
                          // color: AppColors.darkenGrey,
                          label: AppStrings().periodEnd,
                        ),
                        LegendItem(
                          icon: AppImages().calenderIconRED,
                          // color: AppColors.primaryRed,
                          label: AppStrings().today,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.sp,
                          right: 16.sp,
                          top: 160.sp,
                          bottom: 34.sp,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryRed,
                            foregroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(4.r),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            AppStrings().saveChanges,
                            style: AppTextStyles().textFormFieldHintStyle
                                .copyWith(color: AppColors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
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
