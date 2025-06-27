import 'package:sakhi_sali/Import/custom_import.dart';

/// Builds each day cell with optional icons
Widget buildDayCell(
  DateTime date, {
  required bool isSelected,
  required List<DateTime> bloodDay,
  required List<DateTime> periodEndDay,
}) {
  final isBloodDropDay = bloodDay.any((d) => isSameDay(d, date));
  final isPeriodEndDay = periodEndDay.any((d) => isSameDay(d, date));

  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      color: isSelected
          ? null //AppColors.primaryRed.withOpacity(0.2)
          : (isBloodDropDay)
          ? AppColors.primaryRed.withOpacity(0.08)
          : null,
      border: isSelected
          ? Border.all(color: AppColors.primaryRed, width: 2)
          : null,
    ),
    alignment: Alignment.center,
    child: Stack(
      children: [
        if (isBloodDropDay)
          Positioned(
            top: 2.sp,
            right: 2.sp,
            child: Image.asset(
              AppImages().bloodIcon,
              height: 12.sp,
              width: 12.sp,
            ),
          ),
        if (isPeriodEndDay)
          Positioned(
            top: 2.sp,
            right: 2.sp,
            child: Image.asset(
              AppImages().periodEndIcon,
              width: 12.sp,
              height: 12.sp,
            ),
          ),
        Center(
          child: Text('${date.day}', style: TextStyle(color: Colors.black)),
        ),
      ],
    ),
  );
}
