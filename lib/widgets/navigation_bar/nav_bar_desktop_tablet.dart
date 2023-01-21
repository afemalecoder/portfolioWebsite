import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/my_logo.dart';
import 'package:portfolio_website/widgets/navigation_bar/nav_top_bar_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarDesktopTablet extends StatelessWidget {
  const NavBarDesktopTablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double sizedBoxSizing =
            sizingInfo.deviceScreenType == DeviceScreenType.desktop ? 200 : 20;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyLogo(),
                SizedBox(
                  width: sizedBoxSizing,
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  child: NavTopBarText('Home'),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/projects'),
                  child: NavTopBarText('Projects'),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/contact'),
                  child: NavTopBarText('Contact'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
