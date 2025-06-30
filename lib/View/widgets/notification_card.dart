import 'package:sakhi_sali/Import/custom_import.dart';

class NotificationCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final String time;

  const NotificationCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTextStyles().robotoMediumStyle.copyWith(
                          fontSize: 14,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: AppTextStyles().robotoRegularStyle.copyWith(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: AppTextStyles().robotoRegularStyle.copyWith(
                    fontSize: 13,
                    color: AppColors.darkGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
