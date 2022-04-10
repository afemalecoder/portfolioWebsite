import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/drawer/drawer_header.dart';
import 'package:portfolio_website/widgets/drawer/items_colum.dart';

class PortfolioDrawer extends StatelessWidget {
  const PortfolioDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ],
        ),
      ),
    );
  }
}

class NavbarMenu extends StatefulWidget {
  @override
  _NavbarMenuState createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawersHeader(),
          SizedBox(height: 20),
          ItemsColum(),
        ],
      ),
    );
  }
}
