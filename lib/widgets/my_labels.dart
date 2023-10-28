import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SubLabel extends StatelessWidget {
  const SubLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double textSize =
            sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 15 : 30;
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: GoogleFonts.anonymousPro(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double textSize =
            sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 11 : 22;
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: GoogleFonts.anonymousPro(
                  fontSize: textSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CardText extends StatelessWidget {
  const CardText({Key? key, required this.label, required this.opacity})
      : super(key: key);

  final String label;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double textSize =
            sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 11 : 16;
        return Container(
          child: Column(
            children: [
              Text(
                label,
                style: GoogleFonts.anonymousPro(
                  fontSize: textSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(opacity),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
