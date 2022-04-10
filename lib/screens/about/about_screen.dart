import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/drawer/portfolio_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/center_the_view.dart';
import '../../widgets/my_introduction.dart';
import '../../widgets/my_photo.dart';
import '../../widgets/navigation_bar/navigation_top_bar.dart';
import '../home/background.dart';

class AboutScreen extends StatefulWidget {
  static const routeName = '/about';
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Scaffold(
        drawer: sizingInfo.deviceScreenType == DeviceScreenType.mobile
            ? NavbarMenu()
            : null,
        backgroundColor: Color(0xff150941),
        body: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: CustomPaint(
            painter: BackgroundCustomPaint(
              overlayColor: Theme.of(context).colorScheme.background,
              filledColor: Theme.of(context).colorScheme.primaryContainer,
              circleColor: Theme.of(context).colorScheme.primary,
            ),
            child: SingleChildScrollView(
              child: CenterTheView(
                child: Column(
                  children: [
                    NavigationTopBar(),
                    ScreenTypeLayout(
                      desktop: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyIntroduction(
                            label: 'A little more about me',
                          ),
                          MyPhoto(),
                          SubLabel(
                              label:
                                  '''I\'m Matilda, Flutter Developer based in Sweden, Malmo. 
                                  \nI have a passion for problem-solving and recently got into App Development. I am now pursuing my passion and am working towards becoming a full-time Flutter Developer whilst studying. 
                                  \nIn my free time, I like to create content for my social media accounts to help educate others about Flutter and everything around being a woman in STEM. I love to interact with people which led me to start a Twitch channel where I help others to focus, stay motivated and beat procrastination with co-working/study streams. '''),
                          SizedBox(
                            height: 200,
                          ),
                        ],
                      ),
                      mobile: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyIntroduction(
                            label: 'A little more about me',
                          ),
                          Image.asset(
                            'MyPhoto.jpg',
                            height: 300,
                            width: 300,
                          ),
                          SubLabel(
                              label:
                                  '''I\'m Matilda, Flutter Developer based in Sweden, Malmo. 
                                  \nI have a passion for problem-solving and recently got into App Development. I am now pursuing my passion and am working towards becoming a full-time Flutter Developer whilst studying. 
                                  \nIn my free time, I like to create content for my social media accounts to help educate others about Flutter and everything around being a woman in STEM. I love to interact with people which led me to start a Twitch channel where I help others to focus, stay motivated and beat procrastination with co-working/study streams. '''),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
