import 'package:flutter/material.dart';

import 'package:portfolio_website/core/helpers/layout_helper.dart';
import 'package:portfolio_website/screens/contact/contact_screen.dart';
import 'package:portfolio_website/screens/home/home_view.dart';
import 'package:portfolio_website/screens/projects/projects_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  runApp(MatildasPortfolioWeb());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: <SingleChildWidget>[
      ListenableProvider<LayoutHelper>(create: (_) => LayoutHelper()),
    ]);
  }
}

class MatildasPortfolioWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matildas Portfolio Website',
      home: HomeView(),
      routes: {
        HomeView.routeName: (context) => HomeView(),
        ContactScreen.routeName: (context) => ContactScreen(),
        ProjectsScreen.routeName: (context) => ProjectsScreen(),
      },
    );
  }
}
