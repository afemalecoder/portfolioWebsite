import 'package:flutter/cupertino.dart';

import '../../widgets/my_labels.dart';
import 'my_projetcts.dart';

class AffirmationProject extends StatelessWidget {
  const AffirmationProject({
    Key? key,
    required this.isDesktop,
  }) : super(key: key);

  final bool isDesktop;

  Widget build(BuildContext context) {
    return Column(children: [
      SubLabel(label: "Affirmation"),
      SizedBox(
        height: 20,
      ),
      Label(
          label:
              "Affirmation Gratitude, a Flutter/Dart project backed by Firebase, is more than a beautifully designed app; it's a life-enhancing tool. Users can record their gratitude for past and future events, creating a personal journal of positivity. The app also delivers daily motivational quotes for an instant mood boost, with the option to save favourites. With its stunning design, Affirmation Gratitude offers a delightful user experience. Firebase integration ensures seamless data storage and access across devices. This app aims to foster mindfulness and a positive outlook on life. In essence, Affirmation Gratitude is a user-friendly, visually pleasing app that promotes gratitude and inspiration in daily life."),
      isDesktop ? MyProjectDesktopAffirmation() : MyProjectMobileAffirmation(),
    ]);
  }
}

class MyProjectDesktopAffirmation extends StatelessWidget {
  static const gitHubURL =
      'https://github.com/afemalecoder/affirmationgratitude';

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/affirmation/HomeScreenDark.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/affirmation/AffirmationScreenDark.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/affirmation/AffirmationAddDark.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/affirmation/QuoteScreenDark.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/affirmation/ProfileScreenDark.png'),
        ],
      ),
    );
  }
}

class MyProjectMobileAffirmation extends StatelessWidget {
  static const gitHubURL =
      'https://github.com/afemalecoder/affirmationgratitude';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/affirmation/HomeScreenDark.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/affirmation/AffirmationScreenDark.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/affirmation/AffirmationAddDark.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/affirmation/QuoteScreenDark.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/affirmation/ProfileScreenDark.png'),
        ],
      ),
    );
  }
}
