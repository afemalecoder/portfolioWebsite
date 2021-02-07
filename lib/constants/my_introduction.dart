import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyIntroduction extends StatelessWidget {
  const MyIntroduction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        double textSize =
            sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 25 : 50;
        // var textAligment =
        //     sizingInfo.deviceScreenType == DeviceScreenType.desktop
        //         ? TextAlign.left
        //         : TextAlign.center;
        double iconSize =
            sizingInfo.deviceScreenType == DeviceScreenType.desktop ? 4 : 6;
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, my name is Matilda King and I am a Flutter Developer',
                style: GoogleFonts.playfairDisplay(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'IconInsta.jpg',
                    scale: iconSize,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'IconYoutube.jpg',
                    scale: iconSize,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'iconGithub.jpg',
                    scale: iconSize,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'IconLinkedIn.jpg',
                    scale: iconSize,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
