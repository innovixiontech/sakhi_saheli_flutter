// fertility_card.dart
import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/trackPregnacy/controller/track_pregnancy_controller.dart';

class FertilityCard extends StatelessWidget {
  final PregnancyController controller = Get.put(PregnancyController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings().fertilityWindowTitle,
            style: AppTextStyles().robotoMediumStyle,
          ),
          spaceVertical5,
          Obx(
            () => Text(
              controller.dateRange.value,
              style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            AppStrings().fertilityWindowDescription,
            style: AppTextStyles().robotoRegularStyle,
          ),
          SizedBox(height: 12),
          Obx(() {
            double value = controller.progressPercent.value;
            return Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: value,
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "${(value * 100).toInt()}%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
