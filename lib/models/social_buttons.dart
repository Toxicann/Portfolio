import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/screen_helper.dart';

class SocialButtons extends StatelessWidget {
  final VoidCallback onClick;
  final IconData iconData;
  const SocialButtons({Key? key, required this.onClick, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).accentColor,
      child: Container(
        margin: EdgeInsets.only(
            right: ScreenHelper.isTablet(context) ? 30 : 50.0,
            bottom: ScreenHelper.isMobile(context) ? 40.0 : 0.0),
        child: IconButton(
          padding: const EdgeInsets.all(0.0),
          icon: Icon(iconData),
          iconSize: ScreenHelper.isTablet(context) ? 25 : 40.0,
          onPressed: () => onClick(),
        ),
      ),
    );
  }
}
