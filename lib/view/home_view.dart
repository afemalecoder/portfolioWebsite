import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/centerTheView.dart';
import 'package:portfolio_website/constants/myIntroduction.dart';
import 'package:portfolio_website/constants/myPhoto.dart';
import 'package:portfolio_website/constants/navigationTopBar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150941),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('DarkBlueBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: CenterTheView(
          child: Column(
            children: [
              NavigationTopBar(),
              Row(
                children: [
                  MyIntroduction(),
                  MyPhoto(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
