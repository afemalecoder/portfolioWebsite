import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjectMobile extends StatelessWidget {
  const MyProjectMobile({
    Key? key,
    required this.url,
    required this.image,
  }) : super(key: key);

  final String url;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launch(url);
      }, // Image tapped
      splashColor: Colors.white10,
      child: Ink.image(
        fit: BoxFit.contain,
        width: 150,
        height: 400,
        image: AssetImage(
          image,
        ),
      ),
    );
  }
}

class MyProjectDesktop extends StatelessWidget {
  const MyProjectDesktop({
    Key? key,
    required this.url,
    required this.image,
  }) : super(key: key);
  final String url;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launch(url);
      }, // Image tapped
      splashColor: Colors.white10,
      child: Ink.image(
        fit: BoxFit.contain,
        width: 200,
        height: 500,
        image: AssetImage(
          image,
        ),
      ),
    );
  }
}

class MyProjectDesktopGF extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectDesktop(
              url: '', image: 'assets/images/gamesFinder/GameFinderCard.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: '',
              image: 'assets/images/gamesFinder/GamesFinderCardView.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: '',
              image: 'assets/images/gamesFinder/GamesFinderFavorites.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: '', image: 'assets/images/gamesFinder/GamesFinderGame.png'),
        ],
      ),
    );
  }
}

class MyProjectMobileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectMobile(
              url: '', image: 'assets/images/gamesFinder/GameFinderCard.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: '',
              image: 'assets/images/gamesFinder/GamesFinderCardView.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: '',
              image: 'assets/images/gamesFinder/GamesFinderFavorites.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: '', image: 'assets/images/gamesFinder/GamesFinderGame.png'),
        ],
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
