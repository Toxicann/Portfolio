import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/tools_widget.dart';
import '../utils/screen_helper.dart';
import '../utils/constants.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'About Me',
              style: GoogleFonts.poiretOne(
                fontSize: 60,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              'Get to know me ;)',
              style: GoogleFonts.quicksand(
                fontSize: 15,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ScreenHelper.isDesktop(context)
                  ? Image.asset(
                      profile,
                      fit: BoxFit.cover,
                      width: width * 0.25,
                      height: height * 0.5,
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(vertical: 60.0),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).accentColor,
                        radius: 165.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profile),
                          //
                          radius: 160.0,
                        ),
                      ),
                    ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                padding: ScreenHelper.isDesktop(context)
                    ? const EdgeInsets.only(top: 30.0)
                    : const EdgeInsets.only(top: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am I?',
                      style: GoogleFonts.quicksand(
                          fontSize:
                              ScreenHelper.isDesktop(context) ? 35.0 : 30.0,
                          color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: ScreenHelper.isDesktop(context) ? 20 : 15,
                    ),
                    Text(
                      'I am Anush Karki, a Software Developer, Student and a Computer Enthusiast.',
                      style: GoogleFonts.ubuntu(
                          fontSize:
                              ScreenHelper.isDesktop(context) ? 30.0 : 25.0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: ScreenHelper.isDesktop(context) ? 20 : 15,
                    ),
                    Text(
                      "I'm Final Year Computer Science student enrolled in Trinity Internation College affiliated with Tribhuvan University, Kathmandu. I have been developing personal level apps for a few months now. Currently seeking Internship oppurtunities to gain work experience and familiarize myself with workplace ethics.",
                      style: GoogleFonts.quicksand(
                        fontSize: ScreenHelper.isDesktop(context) ? 25.0 : 20.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: ScreenHelper.isDesktop(context) ? 20 : 15,
                    ),
                    Divider(color: Theme.of(context).primaryColor),
                    SizedBox(
                      height: ScreenHelper.isDesktop(context) ? 20 : 15,
                    ),
                    Text(
                      "Technologies I've worked with:",
                      style: GoogleFonts.quicksand(
                          fontSize:
                              ScreenHelper.isDesktop(context) ? 25.0 : 20.0,
                          color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        itemBuilder: (context, index) => ToolsWidget(
                          height: height,
                          toolName: toolName[index],
                        ),
                        itemCount: toolName.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: ScreenHelper.isDesktop(context) ? 20 : 10,
                    ),
                    Divider(color: Theme.of(context).primaryColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
