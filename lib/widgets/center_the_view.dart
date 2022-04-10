import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenterTheView extends StatelessWidget {
  final Widget child;

  const CenterTheView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double paddingVertical =
            sizingInfo.deviceScreenType == DeviceScreenType.desktop ? 40 : 10;
        double paddingHorizontal =
            sizingInfo.deviceScreenType == DeviceScreenType.desktop ? 60 : 30;
        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: paddingVertical, horizontal: paddingHorizontal),
          child: Container(
            // const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
