import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderItems extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const HeaderItems(
      {Key? key, required this.buttonName, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        padding: const EdgeInsets.only(top: 5, right: 20),
        child: Text(
          buttonName,
          style: GoogleFonts.michroma(
            fontSize: 20,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
