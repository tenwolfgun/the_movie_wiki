import 'package:bmnav/bmnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_movie_wiki/injection_container.dart';
import 'package:the_movie_wiki/ui/GenreUi.dart';
import 'package:the_movie_wiki/ui/favorite.dart';
import 'package:the_movie_wiki/ui/movie.dart';
import 'package:the_movie_wiki/ui/search_ui.dart';
import 'package:the_movie_wiki/ui/tv_show.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initKiwi();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTab = 0;

  final _viewPage = [Movie(), TvShow(), Favorite(), GenreUi(), SearchUi()];
  final pageController = PageController();

  void onTap(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie DB',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primaryColor: Color(0XFF232931),
        primaryColorDark: Color(0XFF232931),
        canvasColor: Color(0XFF232931),
        primarySwatch: Colors.red,
        highlightColor: Color(0XFFEB4B1F),
      ),
      home: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: _viewPage,
        ),
        bottomNavigationBar: Material(
          child: BottomNav(
            elevation: 8,
            iconStyle: IconStyle(
              onSelectColor: Color(0XFFEB4B1F),
            ),
            labelStyle: LabelStyle(
              textStyle: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                color: Colors.white54,
              ),
              onSelectTextStyle: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                  color: Color(0XFFEEEEEE)),
            ),
            color: Color(0XFF0D0C11),
            index: _selectedTab,
            onTap: onTap,
            items: [
              BottomNavItem(FontAwesomeIcons.film, label: 'MOVIES'),
              BottomNavItem(Icons.live_tv, label: 'TV'),
              BottomNavItem(Icons.favorite, label: 'FAVORITE'),
              BottomNavItem(Icons.playlist_play, label: 'GENRES'),
              BottomNavItem(FontAwesomeIcons.searchengin, label: 'SEARCH'),
            ],
          ),
        ),
      ),
    );
  }
}
