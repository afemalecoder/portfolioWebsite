import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/contact/contact_screen.dart';
import 'package:portfolio_website/screens/home/home_view.dart';

enum Screen {
  home,
  projects,
  contact,
}

class LayoutHelper with ChangeNotifier {
  Screen screen = Screen.home;
  String label = 'Home';

  void updateScreen(Screen screen, String label) {
    this.screen = screen;
    this.label = label;
    notifyListeners();
  }

  Widget currentScreen() {
    if (screen == Screen.home) {
      return HomeView();
    } else {
      return ContactScreen();
    }
  }
}
