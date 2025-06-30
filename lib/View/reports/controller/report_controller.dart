import 'package:sakhi_sali/Import/custom_import.dart';

class CycleData {
  final String month;
  final double value;
  CycleData(this.month, this.value);
}

class ReportController extends GetxController {
  ///  UPPER CARD GRIDVIEW
  final List<Map<String, dynamic>> reportStats = [
    {
      // 'icon': Image.asset(AppImages().calenderIconRED),
      'icon': Icons.calendar_today,
      'title': AppStrings().avgCycleLabel,
      'value': AppStrings().avgCycleValue,
    },
    {
      // 'icon': Image.asset(AppImages().bloodIcon),
      'icon': Icons.bloodtype_sharp,
      'title': AppStrings().avgPeriodLabel,
      'value': AppStrings().avgPeriodValue,
    },
    {
      'icon': Icons.trending_up,
      'title': AppStrings().longestLabel,
      'value': AppStrings().longestValue,
    },
    {
      'icon': Icons.trending_down,
      'title': AppStrings().shortestLabel,
      'value': AppStrings().shortestValue,
    },
  ];

  ///   X-AXIS MONTH SCALE
  final List<String> months = ['Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar'];

  ///    DATA POINT FOR CYCLE LENGTH TRENDS
  final List<CycleData> cycleLengthData = [
    CycleData('Oct', 27),
    CycleData('Nov', 28),
    CycleData('Dec', 26),
    CycleData('Jan', 27),
    CycleData('Feb', 30),
    CycleData('Mar', 27),
  ];

  ///    DATA POINT FOR PERIOD DURATION
  static final List<CycleData> periodDurationData = [
    CycleData('Oct', 5),
    CycleData('Nov', 6),
    CycleData('Dec', 4),
    CycleData('Jan', 5),
    CycleData('Feb', 5),
    CycleData('Mar', 6),
  ];

  ///   INSIGHTS DATA LIST BOTTOM
  final List<String> insightsData = [
    AppStrings().insightsLine1,
    AppStrings().insightsLine2,
  ];
}
