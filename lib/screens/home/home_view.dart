import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_website/screens/home/background.dart';
import 'package:portfolio_website/widgets/center_the_view.dart';
import 'package:portfolio_website/widgets/my_introduction.dart';
import 'package:portfolio_website/widgets/my_photo.dart';
import 'package:portfolio_website/widgets/drawer/portfolio_drawer.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_top_bar.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final String label = 'A little more about me';
    final String subLabel =
        '''I\'m Matilda, an App Developer based in Denmark, Copenhagen. 
\nI have a passion for problem-solving and recently got into App Development. I am now pursuing my passion and am working towards becoming a full-time App Developer whilst studying at Malmö Yrkeshögskola. 
 \nIn my free time, I like to create content for my social media accounts to help educate others about mobile development and everything around being a woman in STEM. I love to interact with people which led me to start a Twitch channel where I help others to focus, stay motivated and beat procrastination with co-working/study streams. ''';

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
                            label: label,
                          ),
                          MyPhoto(),
                          SubLabel(
                            label: subLabel,
                          ),
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
                            label: 'Hello, my name is Matilda',
                          ),
                          Image.asset(
                            'assets/images/MyPhoto.jpg',
                            height: 300,
                            width: 300,
                          ),
                          SubLabel(
                            label: subLabel,
                          ),
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
