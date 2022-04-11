import 'package:flutter/material.dart';

class DrawersHeader extends StatelessWidget {
  const DrawersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DrawerHeader(
        child: Image.asset(
          'assets/images/myLogo.jpg',
          scale: 3,
        ),
        decoration: BoxDecoration(
          color: Color(0xff150941),
        ),
      ),
    );
  }
}
