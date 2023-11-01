import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/my_labels.dart';

class ProjectButtonCard extends StatelessWidget {
  const ProjectButtonCard({
    Key? key,
    required this.url,
    required this.title,
    required this.description,
    required this.type,
    required this.image,
    required this.icon,
  }) : super(key: key);

  final String url;
  final String title;
  final String description;
  final String type;
  final String image;
  final String icon;

  @override
  Widget build(BuildContext context) {
    var pathName = "";

    switch (title) {
      case "GameFinder":
        pathName = '/gameFinder';
        break;
      case "Affirmation":
        pathName = '/affirmation';
        break;
      case "Portfolio":
        pathName = '/portfolio';
        break;
      case "Habity":
        pathName = '/habity';
        break;
      default:
        break;
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pathName);
      },
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 2, color: Colors.grey.withOpacity(0.3))),
        color: Colors.transparent,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30), // Image radius
                    child: Image.asset(
                      icon,
                    ),
                  ),
                ),
                //CircleAvatar
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SubLabel(label: title),
                      GestureDetector(
                        onTap: () async {
                          await launch(url);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 2,
                                  color: Colors.grey.withOpacity(0.3))),
                          color: Colors.transparent,
                          child: SizedBox(
                            width: 35,
                            height: 35,
                            child: Icon(
                              Icons.link,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                        ),
                      )
                    ]),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                CardText(
                  label: type,
                  opacity: 0.5,
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                CardText(
                  label: description,
                  opacity: 1.0,
                ), //Text
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(20), // Image radius
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ),
                ), //SizedBox //SizedBox
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    );
  }

  void _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
