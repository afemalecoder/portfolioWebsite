import 'package:url_launcher/url_launcher.dart';

class Method {
  launchEmail() async {
    if (await canLaunch('mailto:afemalecoder@gmail.com')) {
      await launch(
          'https://mail.google.com/mail/?view=cm&source=mailto&to=[afemalecoderl@gmail.com]');
    }
  }
}
