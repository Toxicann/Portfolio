import 'package:flutter/material.dart';
import 'package:my_portfolio/components/desktop_about.dart';
import 'package:my_portfolio/components/mobile_about.dart';

import '../utils/screen_helper.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrnHeight = MediaQuery.of(context).size.height;
    final scrnWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ScreenHelper.isMobile(context)
          ? MobileAbout(height: scrnHeight, width: scrnWidth)
          : DesktopAbout(height: scrnHeight, width: scrnWidth),
    );
  }
}
