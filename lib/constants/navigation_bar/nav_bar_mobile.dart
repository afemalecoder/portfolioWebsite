import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Image.asset(
            'myLogo.jpg',
            height: 80,
            width: 150,
          ),
        ],
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
          DrawerHeader(
            child: Image.asset(
              'myLogo.jpg',
              scale: 3,
            ),
            decoration: BoxDecoration(
              color: Color(0xff150941),
            ),
          ),
          ListTile(
              leading: Text(
            'Home',
            style: GoogleFonts.anonymousPro(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          ListTile(
              leading: Text(
            'About',
            style: GoogleFonts.anonymousPro(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          ListTile(
              leading: Text(
            'Projects',
            style: GoogleFonts.anonymousPro(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          ListTile(
              leading: Text(
            'Contact',
            style: GoogleFonts.anonymousPro(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    );
  }
}
