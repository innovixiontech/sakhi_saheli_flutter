import 'package:sakhi_sali/Import/custom_import.dart';

Widget buildCycleLengthTrendChart() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12.h),
    padding: EdgeInsets.all(12.h),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blueAccent),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cycle Length Trend",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        spaceVertical12,
        SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 21, maximum: 35, interval: 2),
          series: <CartesianSeries>[
            LineSeries<CycleData, String>(
              dataSource: ReportController().cycleLengthData,
              xValueMapper: (CycleData data, _) => data.month,
              yValueMapper: (CycleData data, _) => data.value,
              color: AppColors.primaryRed,
              markerSettings: const MarkerSettings(isVisible: true),
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
        ),
      ],
    ),
  );
}
