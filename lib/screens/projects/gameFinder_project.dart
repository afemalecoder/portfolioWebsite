import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/screens/projects/my_projetcts.dart';

import '../../widgets/my_labels.dart';

class GameFinderProject extends StatelessWidget {
  const GameFinderProject({
    Key? key,
    required this.isDesktop,
  }) : super(key: key);

  final bool isDesktop;

  Widget build(BuildContext context) {
    return Column(children: [
      SubLabel(label: "GamesFinder"),
      SizedBox(
        height: 20,
      ),
      Label(
          label:
              "A game discovery app, which is a SwiftUI-based project, simplifies the hunt for new games. Users get provided with a stack of cards that they swipe right to like or left to dismiss games, with each card offering an image, synopsis, and genre tags. Clicking a card reveals detailed game profiles. The technical aspects include RESTful APIs for up-to-date game data, CoreData for personal game lists, and Keychain for secure data storage. The app's intuitive design combines modern aesthetics with efficient functionality. Users can quickly find and track games they love, making game discovery a breeze."),
      isDesktop ? MyProjectDesktopGF() : MyProjectMobileGF()
    ]);
  }
}

class MyProjectDesktopGF extends StatelessWidget {
  static const gitHubURL = 'https://github.com/afemalecoder';

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GameFinderCard.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderCardView.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderFavorites.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderGame.png'),
        ],
      ),
    );
  }
}

class MyProjectMobileGF extends StatelessWidget {
  static const gitHubURL = 'https://github.com/afemalecoder';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GameFinderCard.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderCardView.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderFavorites.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/gamesFinder/GamesFinderGame.png'),
        ],
      ),
    );
  }
}
