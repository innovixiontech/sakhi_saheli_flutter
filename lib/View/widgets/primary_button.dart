import 'package:sakhi_sali/Import/custom_import.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Widget? icon;
  final Widget? suffixIcon;
  final double? height;
  final double? width;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.suffixIcon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 12),
          height: height ?? 45.h,
          width: width ?? 315.w,
          decoration: BoxDecoration(
            color: AppColors.primaryRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ?icon,
              spaceHorizontal10,
              Text(
                title,
                style: AppTextStyles().robotoMediumStyle.copyWith(
                  color: AppColors.white,
                  fontSize: 14,
                ),
              ),
              spaceHorizontal10,

              ?suffixIcon,
            ],
          ),
        ),
      ),
    );
  }
}
