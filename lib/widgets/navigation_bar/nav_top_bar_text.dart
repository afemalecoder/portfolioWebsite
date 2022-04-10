import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavTopBarText extends StatelessWidget {
  final String title;

  const NavTopBarText(
    this.title, {
    Key? key,
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
