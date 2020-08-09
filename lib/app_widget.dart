import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';

import 'core/routes/router.gr.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Movie Wiki',
        builder: (context, nativeNavigator) => Theme(
          data: ThemeData(
            backgroundColor: Colors.black,
            primaryColor: const Color(0XFF232931),
            primaryColorDark: const Color(0XFF232931),
            canvasColor: const Color(0XFF232931),
            primarySwatch: Colors.red,
            highlightColor: const Color(0XFFEB4B1F),
            textTheme: GoogleFonts.montserratTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          child: ExtendedNavigator<Router>(
            router: Router(),
            initialRoute: Routes.homePage,
          ),
        ),
        // theme:
        home: const HomePage(),
      ),
    );
  }
}
