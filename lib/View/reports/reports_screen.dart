import 'package:sakhi_sali/Import/custom_import.dart';

class ReportsScreen extends StatelessWidget {
  final ReportController reportController = Get.put(ReportController());
  final CalendarController calenderController = Get.put(CalendarController());

  ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor.withOpacity(0.6),
        appBar: CustomAppBar(
          title: Text(AppStrings().title),
          trailingIcon: Icon(Icons.info),
          backgroundColor: AppColors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.h),
            child: Column(
              children: [
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: reportController.reportStats.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.6,
                  ),
                  itemBuilder: (context, index) {
                    final item = reportController.reportStats[index];
                    return PeriodStatCard(
                      icon: item['icon'],
                      title: item['title'],
                      value: item['value'],
                    );
                  },
                ),
                spaceVertical16,

                /// Calendar code  is here
                CustomCalendarWidget(
                  controller: calenderController,
                  buildDayCellUI: calendarDesignReport, // या buildCircleDayCell
                ),
                spaceVertical16,

                /// Widget buildCycleLengthCard
                Container(
                  height: 276.h,
                  width: double.infinity,
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cycle Length Trend",
                        style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      spaceVertical16,

                      /// Line Chart (Cycle Length)
                      Expanded(
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          primaryYAxis: NumericAxis(
                            minimum: 21,
                            maximum: 35,
                            interval: 2,
                          ),
                          series: <CartesianSeries>[
                            /// Gradient Shaded Area
                            SplineAreaSeries<CycleData, String>(
                              dataSource: reportController.cycleLengthData,
                              xValueMapper: (CycleData data, _) => data.month,
                              yValueMapper: (CycleData data, _) => data.value,
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.primaryRed.withOpacity(0.4),
                                  AppColors.primaryRed.withOpacity(0.0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              splineType: SplineType.natural,
                              markerSettings: MarkerSettings(isVisible: false),
                              enableTooltip: false,
                              isVisibleInLegend: false,
                            ),

                            /// Bold Line with Dots
                            SplineSeries<CycleData, String>(
                              dataSource: reportController.cycleLengthData,
                              xValueMapper: (CycleData data, _) => data.month,
                              yValueMapper: (CycleData data, _) => data.value,
                              color: AppColors.primaryRed,
                              width: 2.5,
                              splineType: SplineType.natural,
                              markerSettings: MarkerSettings(isVisible: true),
                              isVisibleInLegend: true,
                              enableTooltip: true,
                              enableTrackball: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                spaceVertical16,

                /// Period Duration Bar Chart
                Container(
                  height: 276.h,
                  width: double.infinity,
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Period Duration",
                        style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      spaceVertical16,

                      ///   Bar Chart (Period Duration)
                      Expanded(
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          primaryYAxis: NumericAxis(
                            minimum: 0,
                            maximum: 8,
                            interval: 2,
                          ),
                          series: <CartesianSeries>[
                            ColumnSeries<CycleData, String>(
                              dataSource: ReportController.periodDurationData,
                              xValueMapper: (CycleData data, _) => data.month,
                              yValueMapper: (CycleData data, _) => data.value,
                              pointColorMapper: (_, __) => AppColors.primaryRed,
                              // borderRadius: BorderRadius.circular(6),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                spaceVertical16,

                /// --------Insight Card-------------------------------------
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.white,
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0.sp,
                      horizontal: 16.0.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings().insightsTitle,
                          style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                            color: AppColors.black,
                          ),
                        ),

                        // Dynamically add list items
                        ...List.generate(
                          reportController.insightsData.length,
                          (index) => ListTile(
                            title: Text(
                              reportController.insightsData[index],
                              style: AppTextStyles().textFormFieldHintStyle
                                  .copyWith(color: AppColors.darkGrey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
