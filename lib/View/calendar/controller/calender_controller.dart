import 'package:sakhi_sali/Import/custom_import.dart';

class CalendarController extends GetxController {
  var focusedDay = DateTime.now().obs;
  var selectedDay = Rxn<DateTime>();

  final List<DateTime> calendarRange = [
    DateTime.utc(2020, 1, 1), // firstDay
    DateTime.utc(2030, 12, 31), // lastDay
  ];

  // Mark special days with a blood drop
  static final List<DateTime> bloodDropDays = <DateTime>[
    DateTime.utc(2025, 6, 25),
    DateTime.utc(2025, 6, 28),
    DateTime.utc(2025, 6, 11),
    DateTime.utc(2025, 6, 2),
  ];

  // Mark special days with a period End Date
  static final List<DateTime> periodEndDays = <DateTime>[
    DateTime.utc(2025, 6, 26),
    DateTime.utc(2025, 6, 29),
  ];

  void onDaySelected(DateTime selected, DateTime focused) {
    selectedDay.value = selected;
    focusedDay.value = focused;
  }

  final List<Map<String, dynamic>> periodStatusItems = [
    {'subtitle': 'April 4, 2024', 'title': AppStrings().currentPeriodDateTitle},
    {'subtitle': 'May 4, 2024', 'title': AppStrings().lastPeriodStartedOn},
    {'subtitle': 'May 2, 2024', 'title': AppStrings().nextPeriodStartsOn},
    {'subtitle': '28 days', 'title': AppStrings().averageCycleLength},
  ];
}
