import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/screen_helper.dart';

class ProjectCardTile extends StatelessWidget {
  const ProjectCardTile({
    Key? key,
    required this.scrnHeight,
    required this.scrnWidth,
    required this.projectImg,
    required this.projectName,
    required this.projectDesc,
    required this.projectIcon,
    required this.projectUrl,
  }) : super(key: key);

  final double scrnHeight;
  final double scrnWidth;
  final Image projectImg;
  final String projectName;
  final String projectDesc;
  final IconData projectIcon;
  final String projectUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      width: ScreenHelper.isMobile(context) ? scrnWidth : scrnWidth * 0.35,
      child: GestureDetector(
        child: Card(
          elevation: 10.0,
          color: Theme.of(context).cardColor,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            // height: scrnHeight * 0.4,
            width: scrnWidth * 0.35,
            child: Stack(
              fit: StackFit.expand,
              children: [
                projectImg,
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        projectIcon,
                        size: ScreenHelper.isDesktop(context) ? 40.0 : 25.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        projectName,
                        style: GoogleFonts.oswald(
                          fontSize:
                              ScreenHelper.isDesktop(context) ? 25.0 : 20.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        projectDesc,
                        style: GoogleFonts.raleway(
                          fontSize:
                              ScreenHelper.isDesktop(context) ? 15.0 : 12.0,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        onTap: () => launch(projectUrl),
      ),
    );
  }
}
