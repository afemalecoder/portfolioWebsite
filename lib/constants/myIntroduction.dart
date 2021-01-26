import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIntroduction extends StatelessWidget {
  const MyIntroduction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Matilda King',
            style: GoogleFonts.playfairDisplay(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Flutter Developer',
            style: GoogleFonts.playfairDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'This will be my short introduction\nand here I will have a few facts\nabout me or something like that.\nI just have to fill out the space now\nso let me tell you a funny story.\nSorry I do not know any funny stories\nso eh bye!',
            style: GoogleFonts.playfairDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'roundInstagram.jpg',
                height: 75,
                width: 75,
              ),
              Image.asset(
                'roundGithub.jpg',
                height: 75,
                width: 75,
              ),
              Image.asset(
                'roundemail.jpg',
                height: 75,
                width: 75,
              ),
              Image.asset(
                'roundTwitter.jpg',
                height: 75,
                width: 75,
              ),
              //add social media logo here
            ],
          ),
        ],
      ),
    );
  }
}
