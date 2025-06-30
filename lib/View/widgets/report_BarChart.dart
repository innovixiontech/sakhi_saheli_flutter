import 'package:sakhi_sali/Import/custom_import.dart';

Widget buildPeriodDurationChart() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12.h),
    padding: EdgeInsets.all(12.h),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12.r),
      boxShadow: [
        BoxShadow(
          color: AppColors.black,
          blurRadius: 6.r,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings().periodDurationTitle,
          style: AppTextStyles().robotoSemiBoldStyle.copyWith(
            color: AppColors.black,
          ),
        ),
        spaceVertical12,
        SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 8, interval: 1),
          series: <CartesianSeries>[
            ColumnSeries<CycleData, String>(
              dataSource: ReportController.periodDurationData,
              xValueMapper: (CycleData data, _) => data.month,
              yValueMapper: (CycleData data, _) => data.value,
              pointColorMapper: (_, __) => AppColors.primaryRed,
              borderRadius: BorderRadius.circular(6.r),
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
        ),
      ],
    ),
  );
}
