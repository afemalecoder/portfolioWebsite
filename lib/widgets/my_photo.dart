import 'dart:ui';

import 'package:flutter/material.dart';

class MyPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'MyPhoto.jpg',
        height: 500,
        width: 500,
      ),
    );
  }
}
