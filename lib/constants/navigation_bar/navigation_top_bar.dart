import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/navigation_bar/nav_bar_desktop_tablet.dart';
import 'package:portfolio_website/constants/navigation_bar/nav_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarDesktopTablet(),
      desktop: NavBarDesktopTablet(),
    );
  }
}
