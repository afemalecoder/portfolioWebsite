import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/center_the_view.dart';
import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
import '../../widgets/navigation_bar/navigation_top_bar.dart';
import '../home/background.dart';
import 'my_projetcts.dart';

class ProjectsScreen extends StatefulWidget {
  static const routeName = '/projects';
  ProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
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
                            label:
                                'Here are some projects that I have worked on',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          MyProjectDesktop(
                            url:
                                'https://github.com/afemalecoder/affirmationgratitude',
                            image: 'images/AffirmationGratitude.png',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          MyProjectDesktop(
                            url:
                                'https://github.com/afemalecoder/portfolioWebsite',
                            image: 'images/portfolioImage.png',
                          ),
                        ],
                      ),
                      mobile: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyIntroduction(
                            label:
                                'Here are some projects that I have worked on',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          MyProjectMobile(
                              url:
                                  'https://github.com/afemalecoder/affirmationgratitude',
                              image: 'images/AffirmationGratitude.png'),
                          SizedBox(
                            height: 40,
                          ),
                          MyProjectMobile(
                            url:
                                'https://github.com/afemalecoder/portfolioWebsite',
                            image: 'images/portfolioImage.png',
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
