import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/airing_today_tv_show/airing_today_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/on_air_tv_show/on_air_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/popular_tv_show/popular_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/top_rated_tv_show/top_rated_tv_show_ui.dart';

class TvShow extends StatefulWidget {
  @override
  _TvShowState createState() => _TvShowState();
}

class _TvShowState extends State<TvShow> {
  int page = 1;

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
                  Tab(text: "AIRING TODAY"),
                  Tab(text: "ON TV"),
                  Tab(text: "POPULAR"),
                  Tab(text: "TOP RATED"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: ScrollPhysics(),
          children: <Widget>[
            AiringTodayTvShowUi(),
            OnAirTvShowUi(),
            PopularTvShowUi(),
            TopRatedTvShowUi(),
          ],
        ),
      ),
    );
  }
}
