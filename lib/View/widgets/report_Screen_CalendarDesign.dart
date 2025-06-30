import 'package:sakhi_sali/Import/custom_import.dart';

Widget calendarDesignReport(DateTime date, bool isSelected) {
  final isBloodDropDay = CalendarController.bloodDropDays.any(
    (d) => isSameDay(d, date),
  );

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      color: isSelected
          ? null
          : (isBloodDropDay ? AppColors.primaryRed.withOpacity(0.6) : null),
    ),
    alignment: Alignment.center,
    child: Center(
      child: Text(
        '${date.day}',
        style: TextStyle(color: AppColors.black, fontSize: 12.sp),
      ),
    ),
  );
}
