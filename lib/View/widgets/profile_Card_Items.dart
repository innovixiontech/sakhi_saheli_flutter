import '../../Import/custom_import.dart';

class profileItems extends StatelessWidget {
  final String value;
  final String label;

  const profileItems({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 63.11.w,
      height: 44.h,
      child: Column(
        //todo
        children: [
          Text(
            value,
            style: AppTextStyles().robotoSemiBoldStyle.copyWith(
              color: AppColors.primaryRed,
            ),
            textAlign: TextAlign.center,
          ),

          Expanded(
            child: Text(
              label,
              maxLines: 1,
              softWrap: true,
              // overflow: TextOverflow.ellipsis,
              style: AppTextStyles().robotoRegularStyle,

              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
