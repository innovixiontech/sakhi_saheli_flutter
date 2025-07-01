import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/trackPregnacy/controller/track_pregnancy_controller.dart';
import 'package:sakhi_sali/View/trackPregnacy/widgets/fertility_card.dart';

class TrackPregnancyScreen extends StatelessWidget {
  const TrackPregnancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PregnancyController controller = Get.put(PregnancyController());
    final healthTipList = controller.healthTipList;
    return Scaffold(
      appBar: CustomAppBar(title: Text(AppStrings().trackPregnancyTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVertical10,
            FertilityCard(),
            spaceVertical12,
            Text(
              AppStrings().expectedDueDateTitle,
              style: AppTextStyles().robotoMediumStyle,
            ),
            spaceVertical12,
            Container(
              constraints: BoxConstraints(
                minHeight: 118.h, // minimum height fix
              ),
              width: 343.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings().conceivedTodayLabel,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: AppTextStyles().robotoRegularStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    spaceVertical10,
                    Row(
                      children: [
                        Text(
                          AppStrings().dueDate,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: AppTextStyles().robotoMediumStyle,
                        ),
                        Spacer(),
                        Image.asset(
                          AppImages().calendarIcon,
                          color: AppColors.primaryRed,
                        ),
                      ],
                    ),
                    spaceVertical10,
                    Text(
                      AppStrings().expectedDueDateTitle,
                      style: AppTextStyles().robotoRegularStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spaceVertical15,
            Text(
              AppStrings().tabHealthTips,
              style: AppTextStyles().robotoMediumStyle,
            ),
            spaceVertical12,
            Expanded(
              child: ListView.builder(
                itemCount: healthTipList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsetsGeometry.symmetric(vertical: 10),
                    height: 114.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Image.asset(healthTipList[index]['image']),
                      title: Text(healthTipList[index]['title']),
                      subtitle: Text(healthTipList[index]['subtitle']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
