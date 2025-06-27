import '../../Import/custom_import.dart';

class profileItems extends StatelessWidget {
  final String value;
  final String label;

  const profileItems({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.11.w,
      height: 44.h,
      child: Column(
        children: [
          Text(
            value,
            style: AppTextStyles().robotoSemiBoldStyle.copyWith(
              color: AppColors.primaryRed,
            ),
          ),
          Text(label, style: AppTextStyles().robotoRegularStyle),
        ],
      ),
    );
  }
}
