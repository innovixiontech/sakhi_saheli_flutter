import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/pmsFood/pms_food_controller.dart';

class PmsFriendlyFoodScreen extends GetView {
  const PmsFriendlyFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PmsFoodController controller = Get.put(PmsFoodController());
    final pmsFoodCategoryList = controller.pmsFoodCategoryList;
    final pmsFoodList = controller.pmsFoodList;
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          AppStrings().pmsFoodTitle,
          style: AppTextStyles().robotoMediumStyle.copyWith(fontSize: 17),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVertical30,
            Center(
              child: CustomTextFormField(
                width: 350.w,
                prefixIcon: Icon(Icons.search),
                hintText: AppStrings().pmsFoodTitle,
                controller: TextEditingController(),
                isPassword: false,
              ),
            ),
            spaceVertical20,
            SizedBox(
              height: 63,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pmsFoodCategoryList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsetsGeometry.only(right: 20),
                    height: 63,
                    width: 62,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        spaceVertical5,
                        Image.asset(pmsFoodCategoryList[index]['image']),
                        spaceVertical5,
                        Text(
                          pmsFoodCategoryList[index]['title'],
                          style: AppTextStyles().robotoRegularStyle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            spaceVertical15,
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: pmsFoodList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsetsGeometry.only(top: 20),
                      height: 357.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(pmsFoodList[index]['image']),
                          ),
                          spaceVertical15,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              pmsFoodList[index]['title'],
                              style: AppTextStyles().robotoSemiBoldStyle
                                  .copyWith(
                                    fontSize: 14,
                                    color: AppColors.black,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          spaceVertical10,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              pmsFoodList[index]['subtitle'],
                              style: AppTextStyles().robotoRegularStyle,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            // spaceVertical40,
          ],
        ),
      ),
    );
  }
}
