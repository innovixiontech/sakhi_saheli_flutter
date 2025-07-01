import 'package:sakhi_sali/Import/custom_import.dart';

class CareGuideTab extends StatelessWidget {
  final String label;
  final Widget icon;
  final bool isSelected;

  const CareGuideTab({
    super.key,
    required this.label,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.pink50 : AppColors.whiteGreyest,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: isSelected ? Colors.pink : Colors.grey,
          // color: isSelected ? AppColors.pinkColor : Colors.transparent,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          icon,
          spaceHorizontal5,
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              color: isSelected ? AppColors.pinkColor : AppColors.darkGrey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
