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
                          SubLabel(label: "GamesFinder"),
                          MyProjectDesktopGF(),
                          SubLabel(label: "Affirmation"),
                          Container(
                            height: 500,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/HomeScreenDark.png',
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/AffirmationScreenDark.png',
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/AffirmationAddDark.png',
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/QuoteScreenDark.png',
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/ProfileScreenDark.png',
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SubLabel(label: "Portfolio Website"),
                          Container(
                            height: 500,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioHome.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioProjects.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioContact.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectDesktop(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioDrawer.png'),
                              ],
                            ),
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
                          SubLabel(label: "GamesFinder"),
                          MyProjectMobileGF(),
                          SizedBox(
                            height: 20,
                          ),
                          SubLabel(label: "Affirmation"),
                          Container(
                            height: 400,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/HomeScreenDark.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/AffirmationScreenDark.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/AffirmationAddDark.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/QuoteScreenDark.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/affirmationgratitude',
                                    image:
                                        'assets/images/affirmation/ProfileScreenDark.png'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SubLabel(label: "Portfolio Website"),
                          Container(
                            height: 400,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioHome.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioProjects.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioContact.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                MyProjectMobile(
                                    url:
                                        'https://github.com/afemalecoder/portfolioWebsite',
                                    image:
                                        'assets/images/portfolio/PortfolioDrawer.png'),
                              ],
                            ),
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
