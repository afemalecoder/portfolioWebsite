import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/screens/contact/social_media_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/center_the_view.dart';
import '../../widgets/drawer/portfolio_drawer.dart';
import '../../widgets/my_introduction.dart';
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
                          MyIntroduction(
                            label: 'Get In Touch',
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialButton(
                                url: 'https://github.com/afemalecoder',
                                icon: FontAwesomeIcons.github,
                                label: "GitHub profile",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://instagram.com/afemalecoder',
                                icon: FontAwesomeIcons.instagram,
                                // iconColor: Colors.black,
                                label: "Instagram profile",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://theselfdev.com/',
                                icon: FontAwesomeIcons.dev,
                                // iconColor: Colors.black,
                                label: "Self.dev",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://www.twitch.tv/afemalecoder/',
                                icon: FontAwesomeIcons.twitch,
                                // iconColor: Colors.black,
                                label: "Twitch profile",
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialButton(
                                url: 'https://github.com/afemalecoder',
                                icon: FontAwesomeIcons.github,
                                label: "GitHub profile",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://instagram.com/afemalecoder',
                                icon: FontAwesomeIcons.instagram,
                                label: "Instagram profile",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://theselfdev.com/',
                                icon: FontAwesomeIcons.dev,
                                // iconColor: Colors.black,
                                label: "Self.dev",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SocialButton(
                                url: 'https://www.twitch.tv/afemalecoder/',
                                icon: FontAwesomeIcons.twitch,
                                // iconColor: Colors.black,
                                label: "Twitch profile",
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
