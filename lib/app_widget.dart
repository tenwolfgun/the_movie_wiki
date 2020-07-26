import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Movie Wiki',
        theme: ThemeData(
          backgroundColor: Colors.black,
          primaryColor: Color(0XFF232931),
          primaryColorDark: Color(0XFF232931),
          canvasColor: Color(0XFF232931),
          primarySwatch: Colors.red,
          highlightColor: Color(0XFFEB4B1F),
        ),
        home: const HomePage(),
      ),
    );
  }
}

// class AppWidget extends StatefulWidget {
//   const AppWidget({Key key}) : super(key: key);

//   @override
//   _AppWidgetState createState() => _AppWidgetState();
// }

// class _AppWidgetState extends State<AppWidget> {
//   int _selectedTab = 0;
//   final PageController _pageController = PageController();
//   final _page = [
//     const MoviePage(),
//     const NowPlayingMoviePage(),
//     const NowPlayingMoviePage(),
//     const NowPlayingMoviePage(),
//     const NowPlayingMoviePage(),
//   ];

//   void _onTap(int index) {
//     _pageController.jumpToPage(index);
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       _selectedTab = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(
//       context,
//       width: 1080,
//       height: 2340,
//       allowFontScaling: false,
//     );
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'The Movie Wiki',
//       theme: ThemeData(
//         backgroundColor: Colors.black,
//         primaryColor: Color(0XFF232931),
//         primaryColorDark: Color(0XFF232931),
//         canvasColor: Color(0XFF232931),
//         primarySwatch: Colors.red,
//         highlightColor: Color(0XFFEB4B1F),
//       ),
//       home: const HomePage(),
//     );
//   }
// }
