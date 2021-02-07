import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/my_logo.dart';
import 'package:portfolio_website/constants/navigation_bar/nav_top_bar_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarDesktopTablet extends StatelessWidget {
  const NavBarDesktopTablet({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double sizedBoxSizing =
            sizingInfo.deviceScreenType == DeviceScreenType.desktop ? 300 : 40;
        return Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyLogo(),
              SizedBox(
                width: sizedBoxSizing,
              ),
              NavTopBarText('Home'),
              NavTopBarText('About'),
              NavTopBarText('Projects'),
              NavTopBarText('Contact'),
            ],
          ),
        );
      },
    );
  }
}
