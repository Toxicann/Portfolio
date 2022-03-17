import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/tools_widget.dart';
import '../utils/constants.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
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
            CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              radius: 135.0,
              child: CircleAvatar(
                backgroundImage: AssetImage(profile),
                //
                radius: 130.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Who am I?',
                style: GoogleFonts.quicksand(
                    fontSize: 25.0, color: Theme.of(context).accentColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'I am Anush Karki, a Software Developer, Student and a Computer Enthusiast.',
                style: GoogleFonts.ubuntu(fontSize: 25.0, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "I'm Final Year Computer Science student enrolled in Trinity Internation College affiliated with Tribhuvan University, Kathmandu. I have been developing personal level apps for a few months now. Currently seeking Internship oppurtunities to gain work experience and familiarize myself with workplace ethics.",
                style: GoogleFonts.quicksand(
                  fontSize: 18.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(color: Theme.of(context).primaryColor),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Technologies I've worked with:",
                style: GoogleFonts.quicksand(
                    fontSize: 15.0, color: Theme.of(context).accentColor),
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
            ],
          ),
        ),
      ],
    );
  }
}
