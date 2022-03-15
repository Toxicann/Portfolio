import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import './screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter PortFolio",
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
          primaryColor: const Color(0xffe0e0e0),
          backgroundColor: const Color(0xff353535),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff303030),
          )),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1980,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      home: const HomePage(),
    );
  }
}
