import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/movie/features/discover_movie/presentation/pages/movie_page.dart';
import 'features/movie/features/discover_movie/presentation/pages/now_playing_movie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  final PageController _pageController = PageController();
  final _page = [
    const MoviePage(),
    const NowPlayingMoviePage(),
    const NowPlayingMoviePage(),
    const NowPlayingMoviePage(),
    const NowPlayingMoviePage(),
  ];

  void _onTap(int index) {
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 1080,
      height: 2340,
      allowFontScaling: false,
    );
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _page,
      ),
      bottomNavigationBar: FFNavigationBar(
        onSelectTab: _onTap,
        selectedIndex: _selectedTab,
        theme: FFNavigationBarTheme(
          barBackgroundColor: const Color(0XFF0D0C11),
          selectedItemIconColor: const Color(0XFFEB4B1F),
          selectedItemBackgroundColor: const Color(0XFF0D0C11),
          selectedItemLabelColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          unselectedItemIconColor: Colors.grey[600],
          unselectedItemLabelColor: Colors.grey[600],
          barHeight: 60,
          selectedItemTextStyle: TextStyle(
            height: 3,
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
          ),
          unselectedItemTextStyle: TextStyle(
            height: 3,
            fontSize: 35.sp,
            fontWeight: FontWeight.normal,
          ),
          showSelectedItemShadow: false,
        ),
        items: [
          FFNavigationBarItem(
            iconData: Icons.movie,
            label: 'MOVIE',
          ),
          FFNavigationBarItem(
            iconData: Icons.live_tv,
            label: 'TV',
          ),
          FFNavigationBarItem(
            iconData: Icons.favorite,
            label: 'FAVORITE',
          ),
          FFNavigationBarItem(
            iconData: Icons.playlist_play,
            label: 'GENRE',
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'SEARCH',
          ),
        ],
      ),
    );
  }
}
