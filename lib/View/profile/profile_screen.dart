import 'package:sakhi_sali/Import/custom_import.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    final profileItemList = controller.pfItemList;
    final wlLogItems = controller.wellnessLogItems;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor.withOpacity(0.6),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      AppImages().profileImage,
                      width: 96.w,
                      height: 96.h,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        //alignment: Alignment.center,
                        //margin: EdgeInsets.only(right: 10, bottom: 10),
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.primaryRed,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          //Icon(AppImages().cameraIcon),
                          color: AppColors.white,
                          size: 14.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spaceVertical32,

              Text('Emily Rose', style: AppTextStyles().pacificoRegularStyle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: SizedBox(
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: Icon(
                          Icons.favorite,
                          size: 16,
                          color: AppColors.primaryRed,
                        ),
                      ),
                      Text(
                        'Embracing each day with gratitude ',
                        style: AppTextStyles().textFormFieldHintStyle,
                      ),

                      //Icon(AppImages().heartIcon)
                    ],
                  ),
                ),
              ),
              spaceVertical64,
              Center(
                child: Container(
                  height: 76.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 29,
                      top: 16,
                      bottom: 16,
                      right: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        profileItems(value: '28', label: 'Streak Days'),
                        profileItems(value: '152', label: 'Points'),
                        profileItems(value: '92%', label: 'Wellness'),
                      ],
                    ),
                  ),
                ),
              ),
              spaceVertical41,
              Container(
                margin: EdgeInsets.only(left: 16),
                alignment: Alignment.topLeft,
                child: Text(
                  'Achievements',
                  style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                    color: AppColors.darkenGrey,
                  ),
                ),
              ),
              spaceVertical12,
              SizedBox(
                width: 375.w,
                height: 160,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: profileItemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 64.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                  0xFFFF6F61,
                                ).withOpacity(0.2), // soft reddish shadow
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: AppColors.screenBgColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Image.asset(profileItemList[index]['image']),
                          ),
                        ),
                        spaceVertical10,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            textAlign: TextAlign.center,
                            profileItemList[index]['title'],
                            style: AppTextStyles().robotoRegularStyle,
                            overflow:
                                TextOverflow.ellipsis, // todo maxline error
                            maxLines: 2,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              spaceVertical41,
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Wellness Journey',
                  style: AppTextStyles().robotoSemiBoldStyle.copyWith(
                    color: AppColors.darkenGrey,
                  ),
                ),
              ),
              spaceVertical12,
              SizedBox(
                width: 343.w,
                child: Card(
                  elevation: 0,
                  color: AppColors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department_outlined,
                              color: AppColors.primaryRed,
                              size: 14,
                            ),
                            spaceHorizontal5,
                            Text(
                              'Current Steak',
                              style: AppTextStyles().robotoMediumStyle,
                            ),
                            Spacer(),
                            Text(
                              '28 Days',
                              style: AppTextStyles().robotoMediumStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: wlLogItems.length,
                          itemBuilder: (context, index) {
                            final item = wlLogItems[index];
                            return SizedBox(
                              child: ListTile(
                                leading: Container(
                                  height: 32.h,
                                  width: 32.w,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(
                                          0xFFFF6F61,
                                        ).withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: AppColors.screenBgColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    item['icon'],
                                    color: AppColors.primaryRed,
                                  ),
                                ),
                                title: Text(
                                  item['title'],
                                  style: AppTextStyles().textFormFieldHintStyle
                                      .copyWith(color: AppColors.textBlack),
                                ),
                                subtitle: Text(
                                  item['subtitle'],
                                  style: AppTextStyles().textFormFieldHintStyle
                                      .copyWith(
                                        color: AppColors.subtitleBlack,
                                        fontSize: 12,
                                      ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
