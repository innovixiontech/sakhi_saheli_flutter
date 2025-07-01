import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakhi_sali/Import/custom_import.dart';
import 'package:sakhi_sali/View/notification/controller/notification_controller.dart';
import '../widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(AppStrings().notificationsTitle),
        trailingIcon: Icon(Icons.settings),
      ),
      body: Column(
        children: [
          // tab Bar
          spaceVertical10,
          _buildTabBar(controller),
          SizedBox(height: 16),

          //  Content based on selected tab
          _buildTabContent(controller),
        ],
      ),
    );
  }

  //  Custom Tab Bar
  Widget _buildTabBar(NotificationController controller) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(controller.tabs.length, (index) {
              final isSelected = controller.selectedIndex.value == index;
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () => controller.selectedIndex.value = index,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryRed
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: Text(
                      controller.tabs[index],
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.primaryRed
                            : Colors.black87,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  //  Content Logic Based on Selected Tab
  Widget _buildTabContent(NotificationController controller) {
    return Expanded(
      child: Obx(() {
        int selectedIndex = controller.selectedIndex.value;

        if (selectedIndex == 0) {
          // Tab 0: All Notifications
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: controller.notificationCardItem.length,
            itemBuilder: (context, index) {
              final notification = controller.notificationCardItem[index];
              return NotificationCard(
                icon: Image.asset(
                  notification['image'],
                  width: 24,
                  height: 24,
                  color: AppColors.primaryRed,
                ),
                title: notification['title'],
                subtitle: notification['subtitle'],
                time: notification['time'],
              );
            },
          );
        } else if (selectedIndex == 1) {
          return _buildCenteredText("This is Health Tips");
        } else if (selectedIndex == 2) {
          return _buildCenteredText("This is Reminder");
        } else if (selectedIndex == 3) {
          return _buildCenteredText("This is Updates");
        } else {
          return _buildCenteredText("No content available");
        }
      }),
    );
  }

  Widget _buildCenteredText(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
