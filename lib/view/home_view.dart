import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/center_the_view.dart';
import 'package:portfolio_website/constants/my_introduction.dart';
import 'package:portfolio_website/constants/my_photo.dart';
import 'package:portfolio_website/constants/navigation_bar/nav_bar_mobile.dart';
import 'package:portfolio_website/constants/navigation_bar/navigation_top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Scaffold(
        drawer: sizingInfo.deviceScreenType == DeviceScreenType.mobile
            ? NavbarMenu()
            : null,
        backgroundColor: Color(0xff150941),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('DarkBlueBackground.jpg'),
              fit: BoxFit.cover,
            ),
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
                        MyIntroduction(),
                        MyPhoto(),
                        SizedBox(
                          height: 400,
                        ),
                      ],
                    ),
                    mobile: Column(
                      children: [
                        MyIntroduction(),
                        Image.asset(
                          'MyPhoto.jpg',
                          height: 300,
                          width: 300,
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
    );
  }
}
