import 'package:sakhi_sali/Import/custom_import.dart';

class OrContinueWithText extends StatelessWidget {
  const OrContinueWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 20.h,
        width: 117.w,
        decoration: BoxDecoration(),
        child: Center(
          child: Text(
            AppStrings().orContinueWith,
            style: AppTextStyles().robotoRegularStyle.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
