import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/container.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 5.0),
          Expanded(
            flex: 5,
            child: PortfolioContainer(
              onTap: onTap,
              color: Color.fromARGB(255, 16, 120, 189),
              withShadow: true,
              horizontalMargin: 4,
              verticalMargin: 4,
              child: Text(
                label,
                style: GoogleFonts.anonymousPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
