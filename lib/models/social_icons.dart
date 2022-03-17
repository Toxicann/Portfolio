import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'social_buttons.dart';

List<SocialButtons> socialButtonList = [
  SocialButtons(
    iconData: FontAwesomeIcons.github,
    onClick: () => _launchUrl('https://github.com/toxicann'),
  ),
  SocialButtons(
    iconData: FontAwesomeIcons.linkedin,
    onClick: () => _launchUrl('https://www.linkedin.com/in/karkeea/'),
  ),
  SocialButtons(
    iconData: FontAwesomeIcons.instagram,
    onClick: () => _launchUrl('https://www.instagram.com/karkee_anushz/'),
  ),
];

Future<void> _launchUrl(String url) async {
  await launch(url);
}
