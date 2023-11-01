import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/projects/my_projetcts.dart';
import 'package:portfolio_website/widgets/center_the_view.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
import '../../widgets/my_labels.dart';
import '../home/background.dart';

class GameFinderProject extends StatefulWidget {
  static const routeName = '/gameFinder';

  @override
  State<GameFinderProject> createState() => _GameFinderProject();
}

class _GameFinderProject extends State<GameFinderProject> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const gitHubURL = 'https://github.com/afemalecoder/GameFinder';

    return ResponsiveBuilder(
      builder: ((context, sizingInformation) => Scaffold(
            drawer:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
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
                              MyIntroduction(
                                label: 'GameFinder',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label: "iOS Application",
                                opacity: 0.5,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                indent: 200.0,
                                endIndent: 200.0,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await launch(gitHubURL);
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: BorderSide(
                                              width: 2,
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: SizedBox(
                                            child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.link,
                                              color:
                                                  Colors.grey.withOpacity(0.6),
                                            ),
                                            CardText(
                                              label: " GitHub ",
                                              opacity: 0.6,
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      await launch(gitHubURL);
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: BorderSide(
                                              width: 2,
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: SizedBox(
                                            child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20), // Image border
                                              child: SizedBox.fromSize(
                                                size: Size.fromRadius(
                                                    12), // Image radius
                                                child: Image.asset(
                                                  'assets/images/SwiftUiIcon.png',
                                                ),
                                              ),
                                            ),
                                            CardText(
                                              label: " SwiftUI ",
                                              opacity: 0.6,
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label:
                                    "A game discovery app, which is a SwiftUI-based project, simplifies the hunt for new games. Users get provided with a stack of cards that they swipe right to like or left to dismiss games, with each card offering an image, synopsis, and genre tag. Users can quickly find and track games they love, making game discovery a breeze.",
                                opacity: 1,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 500,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GameFinderCard.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderCardView.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderFavorites.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderGame.png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          mobile: Column(
                            children: [
                              MyIntroduction(
                                label: 'GameFinder',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label: "iOS Application",
                                opacity: 0.5,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                indent: 100.0,
                                endIndent: 100.0,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await launch(gitHubURL);
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: BorderSide(
                                              width: 2,
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: EdgeInsets.all(6),
                                        child: SizedBox(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.link,
                                                color: Colors.grey
                                                    .withOpacity(0.6),
                                              ),
                                              CardText(
                                                label: " GitHub ",
                                                opacity: 0.6,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      await launch(gitHubURL);
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: BorderSide(
                                              width: 2,
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: EdgeInsets.all(6),
                                        child: SizedBox(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20), // Image border
                                                child: SizedBox.fromSize(
                                                  size: Size.fromRadius(
                                                      12), // Image radius
                                                  child: Image.asset(
                                                    'assets/images/SwiftUiIcon.png',
                                                  ),
                                                ),
                                              ),
                                              CardText(
                                                label: " SwiftUI ",
                                                opacity: 0.6,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label:
                                    "A game discovery app, which is a SwiftUI-based project, simplifies the hunt for new games. Users get provided with a stack of cards that they swipe right to like or left to dismiss games, with each card offering an image, synopsis, and genre tag. Users can quickly find and track games they love, making game discovery a breeze.",
                                opacity: 1,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 500,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GameFinderCard.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderCardView.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderFavorites.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/gamesFinder/GamesFinderGame.png'),
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
          )),
    );
  }
}
