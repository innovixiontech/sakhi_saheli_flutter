import 'package:sakhi_sali/Import/custom_import.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final bool isPassword;

  CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.height,
    this.width,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextFieldController>(
      builder: (textFieldController) {
        return Container(
          height: height ?? 55.0.h,
          width: width ?? 340.0.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                spreadRadius: 1,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: TextFormField(
              controller: controller,
              obscureText: isPassword
                  ? !textFieldController.isPasswordVisible
                  : false,
              textAlignVertical: TextAlignVertical.center,
              style: AppTextStyles().robotoRegularStyle.copyWith(
                fontSize: 12.25,
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 14, // controls vertical centering
                  horizontal: 16,
                ),
                prefixIcon: prefixIcon,
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          textFieldController.isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          textFieldController.toggleVisibility();
                        },
                      )
                    : suffixIcon,
                hintText: hintText,
                hintStyle: AppTextStyles().robotoRegularStyle.copyWith(
                  fontSize: 12.25,
                ),
                fillColor: AppColors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
