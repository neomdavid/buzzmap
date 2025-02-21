import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buzzmap/pages/menu_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String currentRoute;
  final String themeMode;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.currentRoute,
    this.themeMode = "light",
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final bool isDarkMode = themeMode == "dark";
    final Color backgroundColor =
        isDarkMode ? theme.colorScheme.primary : Colors.white;
    final Color textColor =
        isDarkMode ? Colors.white : theme.colorScheme.primary;
    final Color iconColor =
        isDarkMode ? Colors.white : theme.colorScheme.primary;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            isDarkMode
                ? 'assets/icons/logo_darkbg.svg'
                : 'assets/icons/logo_ligthbg.svg',
            width: 45,
            height: 45,
          ),
          const SizedBox(width: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'BUZZ',
                  style: TextStyle(
                    fontFamily: 'Koulen',
                    fontStyle: FontStyle.italic,
                    color: textColor,
                    fontSize: 37,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
                TextSpan(
                  text: 'MAP',
                  style: TextStyle(
                    fontFamily: 'Koulen',
                    fontStyle: FontStyle.italic,
                    color:
                        isDarkMode ? Colors.white : theme.colorScheme.surface,
                    fontSize: 37,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/notif.svg',
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: Icon(
            Icons.menu,
            size: 32,
            color: iconColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(currentRoute: currentRoute),
              ),
            );
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
