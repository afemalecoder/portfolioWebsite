import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/navigation_bar/nav_bar_desktop_tablet.dart';
import 'package:portfolio_website/widgets/drawer/portfolio_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortfolioDrawer(),
      tablet: NavBarDesktopTablet(),
      desktop: NavBarDesktopTablet(),
    );
  }
}
