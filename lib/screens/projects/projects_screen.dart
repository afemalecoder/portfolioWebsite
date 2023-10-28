import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/projects/project_button_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/center_the_view.dart';
import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
import '../../widgets/navigation_bar/navigation_top_bar.dart';
import '../home/background.dart';

class ProjectsScreen extends StatefulWidget {
  static const routeName = '/projects';
  ProjectsScreen({Key? key}) : super(key: key);
  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final List<ProjectButtonCard> items = <ProjectButtonCard>[
    ProjectButtonCard(
      url: "https://github.com/afemalecoder/gamefinder",
      title: "GameFinder",
      description:
          ("A game discovery app, which is a SwiftUI-based project, simplifies the hunt for new games. Users get provided with a stack of cards that they swipe right to like or left to dismiss games, with each card offering an image, synopsis, and genre tag. Users can quickly find and track games they love, making game discovery a breeze."),
      type: "iOS Application",
      image: 'assets/images/SwiftUiIcon.png',
      icon: 'assets/images/gamesFinder/GameFinderAppIcon.png',
    ),
    ProjectButtonCard(
      url: "https://github.com/afemalecoder/affirmationgratitude",
      title: "Affirmation",
      description:
          ("It's an app where users can record their gratitude for past and future events, creating a personal journal of positivity. The app also delivers daily motivational quotes for an instant mood boost, with the option to save favourites. With its stunning design, Affirmation Gratitude offers a delightful user experience."),
      type: "Flutter/Dart Application",
      image: 'assets/images/FlutterLogo.jpg',
      icon: 'assets/images/affirmation/affirmationIcon.png',
    ),
    ProjectButtonCard(
      url: "https://github.com/afemalecoder/portfolioWebsite",
      title: "Portfolio",
      description:
          ("Crafted with Flutter/Dart and designed for seamless screen-size responsiveness, my portfolio website is a showcase of my expertise and creativity."),
      type: "Flutter/Dart Web Application",
      image: 'assets/images/FlutterLogo.jpg',
      icon: 'assets/images/portfolio/portfolioIcon.png',
    ),
    ProjectButtonCard(
      url: "https://github.com/afemalecoder",
      title: "Habity",
      description:
          ("Habity, is a habit-tracking app integrated with Firebase for user management and data storage. It empowers users to cultivate and monitor their colour-coded habits, bringing organization and productivity to their daily lives. The core feature lies in its habit-tracking capabilities. Users can colour-code their habits, making it simple to track progress and stay motivated."),
      type: "Jetpack Compose",
      image: 'assets/images/jetpackComposeLogo.png',
      icon: 'assets/images/habity/habityIcon.png',
    ),
  ];

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
                            label: 'My projects',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100, right: 100),
                            child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 500,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio:
                                    MediaQuery.of(context).size.width /
                                        MediaQuery.of(context).size.height,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return GridTile(child: items[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                      tablet: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyIntroduction(
                            label: 'My projects',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100, right: 100),
                            child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 500,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio:
                                    MediaQuery.of(context).size.width /
                                        MediaQuery.of(context).size.height,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return GridTile(child: items[index]);
                              },
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
                            label: 'My projects',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 400,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio:
                                    MediaQuery.of(context).size.width /
                                        MediaQuery.of(context).size.height,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return GridTile(child: items[index]);
                              },
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
