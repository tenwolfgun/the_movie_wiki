import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/favorite_movies/favorite_movies_ui.dart';
import 'package:the_movie_wiki/ui/favorite_tv_show/favorite_tv_show_ui.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: AppBar(
            brightness: Brightness.dark,
            elevation: 8,
            backgroundColor: Color(0XFF0D0C11),
            title: Material(
              color: Color(0XFF0D0C11),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: false,
                unselectedLabelColor: Colors.white54,
                labelColor: Color(0XFFEEEEEE),
                indicator: MD2Indicator(
                    indicatorHeight: 3,
                    indicatorColor: Color(0XFFEB4B1F),
                    indicatorSize: MD2IndicatorSize.normal),
                tabs: <Tab>[
                  Tab(text: "MOVIES"),
                  Tab(text: "TV SHOW"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: ScrollPhysics(),
          children: <Widget>[
            FavoriteMoviesUi(),
            FavoriteTvShowUi(),
          ],
        ),
      ),
    );
  }
}
