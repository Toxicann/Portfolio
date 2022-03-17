import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utils/screen_helper.dart';
import '../utils/constants.dart';
import '../models/contact_cards.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ContactCards> contactCards = [
      ContactCards(
        icon: FontAwesomeIcons.home,
        contactDetails: homeAddress,
      ),
      ContactCards(
        icon: FontAwesomeIcons.phone,
        contactDetails: mobileNo,
      ),
      ContactCards(
        icon: Icons.email_rounded,
        contactDetails: email,
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in Touch',
            style: GoogleFonts.poiretOne(
              color: Theme.of(context).primaryColor,
              fontSize: 60,
            ),
          ),
          const SizedBox(height: 50.0),
          ScreenHelper.isMobile(context)
              ? CarouselSlider(
                  items: contactCards,
                  options: CarouselOptions(
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * 0.25,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(seconds: 5),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: contactCards,
                ),
        ],
      ),
    );
  }
}
