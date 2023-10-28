import 'package:flutter/cupertino.dart';

import '../../widgets/my_labels.dart';
import 'my_projetcts.dart';

class HabityProject extends StatelessWidget {
  const HabityProject({
    Key? key,
    required this.isDesktop,
  }) : super(key: key);

  final bool isDesktop;
  Widget build(BuildContext context) {
    return Column(children: [
      SubLabel(label: "Habity"),
      SizedBox(
        height: 20,
      ),
      Label(
          label:
              "My Jetpack Compose project, 'Habity,' is a habit-tracking app integrated with Firebase for user management and data storage. It empowers users to cultivate and monitor their colour-coded habits, bringing organization and productivity to their daily lives. With Habity, users can easily sign up and log in, providing a personalized experience. The core feature lies in its habit-tracking capabilities. Users can colour-code their habits, making it simple to track progress and stay motivated. Firebase seamlessly handles the storage of these habits, ensuring data security and accessibility across devices."),
      isDesktop ? MyProjectDesktopHabity() : MyProjectMobileHabity(),
    ]);
  }
}

class MyProjectDesktopHabity extends StatelessWidget {
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
              image: 'assets/images/habity/HabityHomeScreen.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/habity/HabityHabitDetailScreen.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/habity/HabitySignUpScreen.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/habity/HabityLoginScreen.png'),
        ],
      ),
    );
  }
}

class MyProjectMobileHabity extends StatelessWidget {
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
              image: 'assets/images/habity/HabityHomeScreen.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/habity/HabityHabitDetailScreen.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/habity/HabitySignUpScreen.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/habity/HabityLoginScreen.png'),
        ],
      ),
    );
  }
}
