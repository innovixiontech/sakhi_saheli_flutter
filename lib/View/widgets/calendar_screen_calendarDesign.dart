import 'package:sakhi_sali/Import/custom_import.dart';

Widget calendarDesignCalendar(DateTime date, bool isSelected) {
  final isBloodDropDay = CalendarController.bloodDropDays.any(
    (d) => isSameDay(d, date),
  );
  final isPeriodEndDay = CalendarController.periodEndDays.any(
    (d) => isSameDay(d, date),
  );

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.r),
      color: isSelected
          ? null
          : (isBloodDropDay ? AppColors.primaryRed.withOpacity(0.08) : null),
      border: isSelected
          ? Border.all(color: AppColors.primaryRed, width: 2.r)
          : null,
    ),
    alignment: Alignment.center,
    child: Stack(
      children: [
        if (isBloodDropDay)
          Positioned(
            top: 2.r,
            right: 2.r,
            child: Image.asset(
              AppImages().bloodIcon,
              height: 12.h,
              width: 12.w,
            ),
          ),
        if (isPeriodEndDay)
          Positioned(
            top: 2.r,
            right: 2.r,
            child: Image.asset(
              AppImages().periodEndIcon,
              height: 12.h,
              width: 12.w,
            ),
          ),
        Center(
          child: Text(
            '${date.day}',
            style: TextStyle(color: AppColors.black, fontSize: 14.sp),
          ),
        ),
      ],
    ),
  );
}
