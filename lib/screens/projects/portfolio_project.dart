import 'package:flutter/cupertino.dart';

import '../../widgets/my_labels.dart';
import 'my_projetcts.dart';

class PortfolioProject extends StatelessWidget {
  const PortfolioProject({
    Key? key,
    required this.isDesktop,
  }) : super(key: key);

  final bool isDesktop;

  Widget build(BuildContext context) {
    return Column(children: [
      SubLabel(label: "Portfolio Website"),
      SizedBox(
        height: 20,
      ),
      Label(
          label:
              "Crafted with Flutter/Dart and designed for seamless screen-size responsiveness, my portfolio website is a showcase of my expertise and creativity."),
      isDesktop ? MyProjectDesktopPortfolio() : MyProjectMobilePortfolio(),
    ]);
  }
}

class MyProjectDesktopPortfolio extends StatelessWidget {
  static const gitHubURL = 'https://github.com/afemalecoder/portfolioWebsite';

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioHome.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioProjects.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioContact.png'),
          SizedBox(
            width: 40,
          ),
          MyProjectDesktop(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioDrawer.png'),
        ],
      ),
    );
  }
}

class MyProjectMobilePortfolio extends StatelessWidget {
  static const gitHubURL = 'https://github.com/afemalecoder/portfolioWebsite';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioHome.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioProjects.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioContact.png'),
          SizedBox(
            width: 20,
          ),
          MyProjectMobile(
              url: gitHubURL,
              image: 'assets/images/portfolio/PortfolioDrawer.png'),
        ],
      ),
    );
  }
}
