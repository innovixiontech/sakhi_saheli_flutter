import '../../Import/custom_import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final Text title;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onTrailingTap;

  const CustomAppBar({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    required this.title,
    this.onLeadingTap,
    this.onTrailingTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFF5F7),
      elevation: 1,
      centerTitle: true,
      title: title,
      leading: leadingIcon != null
          ? GestureDetector(onTap: onLeadingTap, child: leadingIcon)
          : null,
      actions: [
        if (trailingIcon != null)
          GestureDetector(
            onTap: onTrailingTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: trailingIcon,
            ),
          ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
