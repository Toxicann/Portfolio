import 'package:flutter/material.dart';

import '../components/desktop_tablet_home.dart';
import '../components/mobile_home.dart';
import '../utils/screen_helper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrnHeight = MediaQuery.of(context).size.height;
    final scrnWidth = MediaQuery.of(context).size.width;
    return ScreenHelper.isMobile(context)
        ? MobileHome(height: scrnHeight, width: scrnWidth)
        : DesktopHome(height: scrnHeight, width: scrnWidth);
  }
}
