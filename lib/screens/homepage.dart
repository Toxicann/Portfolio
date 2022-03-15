import 'package:flutter/material.dart';

import '../models/header_items.dart';
import '../utils/constants.dart';
import '../utils/screen_helper.dart';

List<HeaderItems> headerItems = [
  HeaderItems(
    buttonName: 'Home',
    onPressed: () {},
  ),
  HeaderItems(
    buttonName: 'About',
    onPressed: () {},
  ),
  HeaderItems(
    buttonName: 'Projects',
    onPressed: () {},
  ),
  HeaderItems(
    buttonName: 'Contact',
    onPressed: () {},
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ScreenHelper.isMobile(context)
            ? null
            : Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.contain,
              ),
        leadingWidth: ScreenHelper.isMobile(context) ? null : 226,
        actions: ScreenHelper.isMobile(context)
            ? [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ]
            : headerItems.map((items) => items).toList(),
      ),
      key: scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      drawerEdgeDragWidth: !ScreenHelper.isMobile(context) ? 0 : null,
      drawer: Drawer(
        backgroundColor: const Color(0xff303030),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: headerItems[index],
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                  );
                },
                itemCount: headerItems.length,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    );
  }
}
