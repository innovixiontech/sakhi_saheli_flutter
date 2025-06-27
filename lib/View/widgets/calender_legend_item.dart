import 'package:sakhi_sali/Import/custom_import.dart';

class LegendItem extends StatelessWidget {
  final String icon;
  final String label;

  const LegendItem({Key? key, required this.icon, required this.label})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Colored dot or square
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(right: 6),
          child: Image.asset(icon, fit: BoxFit.cover),
          // decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),

        // Text label
        Text(
          label,
          style: AppTextStyles().textFormFieldHintStyle.copyWith(
            color: Colors.black,
          ),
        ),

        const SizedBox(width: 8), // spacing between items
      ],
    );
  }
}
