import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'myLogo.jpg',
          height: 100,
          width: 204,
        ),
      ),
    );
  }
}
