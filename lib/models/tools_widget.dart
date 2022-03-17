import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({
    Key? key,
    required this.height,
    required this.toolName,
  }) : super(key: key);

  final double height;
  final String toolName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 12.0),
      child: Row(children: [
        Icon(
          Icons.play_arrow,
          color: Theme.of(context).accentColor,
          size: height * 0.02,
        ),
        Text(
          toolName,
          style: GoogleFonts.offside(color: Colors.white),
        )
      ]),
    );
  }
}
