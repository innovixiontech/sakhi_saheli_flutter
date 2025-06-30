import 'package:sakhi_sali/Import/custom_import.dart';

class PeriodStatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const PeriodStatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primaryRed, size: 20.r),
              spaceHorizontal8,
              Text(
                title,
                softWrap: true,
                style: AppTextStyles().textFormFieldHintStyle.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
            ],
          ),
          spaceVertical8,
          Expanded(
            child: Text(
              value,
              style: AppTextStyles().authTitleStyle,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
