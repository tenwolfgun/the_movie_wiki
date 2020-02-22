import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/popular_movie/popular_movies_ui.dart';
import 'package:the_movie_wiki/ui/top_rated_movies/top_rated_movies_ui.dart';
import 'package:the_movie_wiki/ui/upcoming_movie/upcoming_movies_ui.dart';
import 'now_playing_movie/now_playing_movies_ui.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                isScrollable: true,
                unselectedLabelColor: Colors.white54,
                labelColor: Color(0XFFEEEEEE),
                indicator: MD2Indicator(
                    indicatorHeight: 3,
                    indicatorColor: Color(0XFFEB4B1F),
                    indicatorSize: MD2IndicatorSize.normal),
                tabs: <Tab>[
                  Tab(text: "IN THEATERS"),
                  Tab(text: "POPULAR"),
                  Tab(text: "TOP RATED"),
                  Tab(text: "UPCOMING"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: ScrollPhysics(),
          children: <Widget>[
            NowPlayingMoviesUi(),
            PopularMoviesUi(),
            TopRatedMoviesUi(),
            UpcomingMoviesUi(),
          ],
        ),
      ),
    );
  }
}
