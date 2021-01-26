import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'AFemaleCoder.',
            style: GoogleFonts.anonymousPro(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          _NavTopBarText('Home'),
          _NavTopBarText('About'),
          _NavTopBarText('Projects'),
          _NavTopBarText('Contact'),
        ],
      ),
    );
  }
}

class _NavTopBarText extends StatelessWidget {
  final String title;

  const _NavTopBarText(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.anonymousPro(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
