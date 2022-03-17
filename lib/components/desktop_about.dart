import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return SizedBox(
      child: Column(
        children: <Widget>[
          Text(
            'About Me',
            style: GoogleFonts.robotoCondensed(),
          ),
        ],
      ),
    );
  }
}
