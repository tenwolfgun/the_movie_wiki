import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/genre/genre_movie_ui.dart';
import 'package:the_movie_wiki/ui/genre/genre_tv_show_ui.dart';

class GenreUi extends StatefulWidget {
  @override
  _GenreUiState createState() => _GenreUiState();
}

class _GenreUiState extends State<GenreUi> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          brightness: Brightness.dark,
          elevation: 8,
          backgroundColor: Color(0XFF0D0C11),
          title: Material(
            color: Color(0XFF0D0C11),
            child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: false,
              unselectedLabelColor: Colors.white54,
              labelColor: Color(0XFFEEEEEE),
              indicator: MD2Indicator(
                  indicatorHeight: 3,
                  indicatorColor: Color(0XFFEB4B1F),
                  indicatorSize: MD2IndicatorSize.normal),
              tabs: <Tab>[Tab(text: "MOVIES"), Tab(text: "TV SHOW")],
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: ScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          GenreMovieUi(),
          GenreTvShowUi(),
        ],
      ),
    );
  }
}
