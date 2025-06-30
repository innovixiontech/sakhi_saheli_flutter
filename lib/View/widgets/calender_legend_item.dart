import 'package:sakhi_sali/Import/custom_import.dart';

class LegendItem extends StatelessWidget {
  final String icon;
  final String label;

  const LegendItem({Key? key, required this.icon, required this.label})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon container (dot/symbol)
        SizedBox(
          width: 12.w,
          height: 12.h,
          child: Image.asset(icon, fit: BoxFit.cover),
        ),

        SizedBox(width: 6.w),

        // Label text
        Text(
          label,
          style: AppTextStyles().textFormFieldHintStyle.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
