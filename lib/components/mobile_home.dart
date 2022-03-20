import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../utils/screen_helper.dart';
import '../utils/constants.dart';
import '../models/social_icons.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
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
            // left: width * 0.01,
            child: Image.asset(
              profileH,
              fit: BoxFit.scaleDown,
            ),
          ),
          Positioned(
            top: height * 0.05,
            left: width * 0.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm",
                  style: GoogleFonts.oswald(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 5.0),
                Shimmer.fromColors(
                  baseColor: Theme.of(context).primaryColor,
                  highlightColor: Theme.of(context).accentColor,
                  child: Text(
                    "Anush Karki",
                    style: GoogleFonts.lobster(
                      fontSize: 55,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
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
                            fontSize: 25,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'Technology Enthusiast',
                          speed: const Duration(milliseconds: 200),
                          textStyle: GoogleFonts.raleway(
                            fontSize: 25,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'Student',
                          speed: const Duration(milliseconds: 200),
                          textStyle: GoogleFonts.raleway(
                            fontSize: 25,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
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
