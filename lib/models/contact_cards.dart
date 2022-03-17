import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/screen_helper.dart';

class ContactCards extends StatelessWidget {
  final IconData icon;
  final String contactDetails;
  const ContactCards(
      {Key? key, required this.icon, required this.contactDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Card(
        elevation: 20.0,
        color: Theme.of(context).cardColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: ScreenHelper.isDesktop(context)
              ? MediaQuery.of(context).size.height * 0.35
              : MediaQuery.of(context).size.height * 0.27,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Theme.of(context).accentColor,
                size: 40.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                contactDetails,
                style: GoogleFonts.maitree(
                  fontSize: 16.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
