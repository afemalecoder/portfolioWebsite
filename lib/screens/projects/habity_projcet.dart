import '../../widgets/my_labels.dart';
import 'my_projetcts.dart';

import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/center_the_view.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
import '../home/background.dart';

class HabityProject extends StatefulWidget {
  static const routeName = '/habity';

  @override
  State<HabityProject> createState() => _HabityProject();
}

class _HabityProject extends State<HabityProject> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const gitHubURL = 'https://github.com/afemalecoder';

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
                                label: 'Habity',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label: "Jetpack Compose Application",
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
                                                  'assets/images/jetpackComposeLogo.png',
                                                ),
                                              ),
                                            ),
                                            CardText(
                                              label: " Jetpack Compose",
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
                                    "My Jetpack Compose project, 'Habity,' is a habit-tracking app integrated with Firebase for user management and data storage. It empowers users to cultivate and monitor their colour-coded habits, bringing organization and productivity to their daily lives. With Habity, users can easily sign up and log in, providing a personalized experience. The core feature lies in its habit-tracking capabilities. Users can colour-code their habits, making it simple to track progress and stay motivated. Firebase seamlessly handles the storage of these habits, ensuring data security and accessibility across devices.",
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
                                            'assets/images/habity/HabityHomeScreen.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabityHabitDetailScreen.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabitySignUpScreen.png'),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    MyProjectDesktop(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabityLoginScreen.png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          mobile: Column(
                            children: [
                              MyIntroduction(
                                label: 'Habity',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CardText(
                                label: "Jetpack Compose Application",
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
                                                    'assets/images/jetpackComposeLogo.png',
                                                  ),
                                                ),
                                              ),
                                              CardText(
                                                label: " Jetpack Compose ",
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
                                    "My Jetpack Compose project, 'Habity,' is a habit-tracking app integrated with Firebase for user management and data storage. It empowers users to cultivate and monitor their colour-coded habits, bringing organization and productivity to their daily lives. With Habity, users can easily sign up and log in, providing a personalized experience. The core feature lies in its habit-tracking capabilities. Users can colour-code their habits, making it simple to track progress and stay motivated. Firebase seamlessly handles the storage of these habits, ensuring data security and accessibility across devices.",
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
                                    MyProjectMobile(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabityHomeScreen.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectMobile(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabityHabitDetailScreen.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectMobile(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabitySignUpScreen.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MyProjectMobile(
                                        url: gitHubURL,
                                        image:
                                            'assets/images/habity/HabityLoginScreen.png'),
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
