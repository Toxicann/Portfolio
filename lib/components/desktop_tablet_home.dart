import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../models/social_buttons.dart';
import '../utils/screen_helper.dart';
import '../models/social_icons.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height - AppBar().preferredSize.height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height * 0.15,
            right: width * 0.001,
            child: Image.asset(
              'assets/images/profileH.png',
            ),
          ),
          Positioned(
            top: height * 0.25,
            left: width * 0.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm",
                  style: GoogleFonts.oswald(
                    color: Theme.of(context).primaryColor,
                    fontSize: ScreenHelper.isTablet(context) ? 35 : 60,
                  ),
                ),
                SizedBox(height: ScreenHelper.isTablet(context) ? 5.0 : 10.0),
                Shimmer.fromColors(
                  baseColor: Theme.of(context).primaryColor,
                  highlightColor: Theme.of(context).accentColor,
                  child: Text(
                    "Anush Karki",
                    style: GoogleFonts.lobster(
                      fontSize: ScreenHelper.isTablet(context) ? 50 : 75,
                    ),
                  ),
                ),
                SizedBox(height: ScreenHelper.isTablet(context) ? 8.0 : 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_right,
                      color: Theme.of(context).accentColor,
                      size: ScreenHelper.isTablet(context) ? 35 : 50,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Software Developer',
                          speed: const Duration(milliseconds: 200),
                          textStyle: GoogleFonts.raleway(
                            fontSize: ScreenHelper.isTablet(context) ? 20 : 35,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'Technology Enthusiast',
                          speed: const Duration(milliseconds: 200),
                          textStyle: GoogleFonts.raleway(
                            fontSize: ScreenHelper.isTablet(context) ? 20 : 35,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'Part-Time Gamer',
                          speed: const Duration(milliseconds: 200),
                          textStyle: GoogleFonts.raleway(
                            fontSize: ScreenHelper.isTablet(context) ? 20 : 35,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: ScreenHelper.isTablet(context) ? 20 : 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: socialButtonList,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
