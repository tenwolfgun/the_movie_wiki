import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/search_movies/search_movies_ui.dart';
import 'package:the_movie_wiki/ui/search_tv_show/search_tv_show_ui.dart';

class SearchResultUi extends StatefulWidget {
  final String searchQuery;

  SearchResultUi({
    Key key,
    @required this.searchQuery,
  }) : super(key: key);

  @override
  _SearchResultUiState createState() => _SearchResultUiState();
}

class _SearchResultUiState extends State<SearchResultUi>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Color(0XFF0D0C11),
        title: Text(widget.searchQuery),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Material(
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
              tabs: <Tab>[
                Tab(text: "MOVIES"),
                Tab(text: "TV SHOW"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SearchMoviesUi(
            searchQuery: widget.searchQuery.toString(),
          ),
          SearchTvShowUi(
            searchQuery: widget.searchQuery.toString(),
          ),
        ],
      ),
    );
  }
}
