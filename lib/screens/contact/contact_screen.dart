import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/center_the_view.dart';
import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
import '../../widgets/my_photo.dart';
import '../../widgets/navigation_bar/navigation_top_bar.dart';
import '../home/background.dart';

class ContactScreen extends StatefulWidget {
  static const routeName = '/contact';

  ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                            label: 'Get In Touch',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launch(
                                      'https://github.com/afemalecoder/');
                                }, // Image tapped
                                splashColor: Colors.white10,
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                  image: AssetImage(
                                    'iconGithub.jpg',
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await launch(
                                      'https://instagram.com/afemalecoder/');
                                }, // Image tapped
                                splashColor: Colors.white10,
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                  image: AssetImage(
                                    'iconInsta.jpg',
                                  ),
                                ),
                              ),
                            ],
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
                            label: 'Get In Touch',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launch(
                                      'https://github.com/afemalecoder/');
                                }, // Image tapped
                                splashColor: Colors.white10,
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(
                                    'iconGithub.jpg',
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await launch(
                                      'https://instagram.com/afemalecoder/');
                                }, // Image tapped
                                splashColor: Colors.white10,
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(
                                    'iconInsta.jpg',
                                  ),
                                ),
                              ),
                            ],
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
