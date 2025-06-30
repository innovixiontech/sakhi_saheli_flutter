import 'package:sakhi_sali/Import/custom_import.dart';

class CustomCalendarWidget extends StatelessWidget {
  final Widget Function(DateTime date, bool isSelected) buildDayCellUI;
  final CalendarController controller;

  const CustomCalendarWidget({
    super.key,
    required this.buildDayCellUI,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final calendarRange = CalendarController().calendarRange;

    return Obx(
      () => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              rowHeight: 45,
              daysOfWeekHeight: 25.h,
              calendarFormat: CalendarFormat.month,
              firstDay: calendarRange[0],
              lastDay: calendarRange[1],
              focusedDay: controller.focusedDay.value,
              selectedDayPredicate: (day) =>
                  isSameDay(controller.selectedDay.value, day),
              onDaySelected: controller.onDaySelected,
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, date, _) =>
                    buildDayCellUI(date, true),
                defaultBuilder: (context, date, _) =>
                    buildDayCellUI(date, false),
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
              ),
              calendarStyle: CalendarStyle(
                isTodayHighlighted: false,
                weekendTextStyle: const TextStyle(color: Colors.black),
                selectedTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                defaultTextStyle: AppTextStyles().textFormFieldHintStyle
                    .copyWith(color: Colors.black),
                selectedDecoration: BoxDecoration(
                  border: Border.all(width: 2.w, color: AppColors.primaryRed),
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: AppTextStyles().robotoMediumStyle.copyWith(
                  color: Colors.black,
                ),
                weekdayStyle: AppTextStyles().robotoMediumStyle.copyWith(
                  color: AppColors.textBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
