import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utils/screen_helper.dart';
import '../utils/constants.dart';
import '../models/project_cards.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrnHeight = MediaQuery.of(context).size.height;
    final scrnWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style: GoogleFonts.poiretOne(
              fontSize: 60,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            'Here are a few samples of my work',
            style: GoogleFonts.quicksand(
              fontSize: 15,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ScreenHelper.isMobile(context)
              ? SizedBox(
                  child: CarouselSlider.builder(
                    itemCount: projectImages.length,
                    itemBuilder: (context, index, pageIndex) {
                      return ProjectCardTile(
                        scrnHeight: scrnHeight,
                        scrnWidth: scrnWidth,
                        projectImg: projectImages[index],
                        projectName: projectName[index],
                        projectDesc: projectDesc[index],
                        projectIcon: projectIcon[index],
                        projectUrl: projectUrl[index],
                      );
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        height: MediaQuery.of(context).size.height * 0.4,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        viewportFraction: 0.62),
                  ),
                )
              : SizedBox(
                  height: ScreenHelper.isDesktop(context)
                      ? scrnHeight * 0.4
                      : scrnHeight * 0.35,
                  width: scrnWidth,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ProjectCardTile(
                        scrnHeight: scrnHeight,
                        scrnWidth: scrnWidth,
                        projectImg: projectImages[index],
                        projectName: projectName[index],
                        projectDesc: projectDesc[index],
                        projectIcon: projectIcon[index],
                        projectUrl: projectUrl[index],
                      );
                    },
                    itemCount: projectImages.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
        ],
      ),
    );
  }
}
