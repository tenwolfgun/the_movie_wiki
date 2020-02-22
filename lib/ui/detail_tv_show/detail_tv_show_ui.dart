import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_loading_indicator.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_cast.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_info.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_media.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_review.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_season.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/widget/detail_tv_similar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailTvShowUi extends StatefulWidget {
  final int id;
  final String imageName;
  final String name;
  final double rating;

  DetailTvShowUi({this.id, this.imageName, this.name, this.rating});

  @override
  _DetailTvShowUiState createState() => _DetailTvShowUiState();
}

const kExpandedHeight = 350.0;

class _DetailTvShowUiState extends State<DetailTvShowUi>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  final _detailTvShowBloc = kiwi.Container().resolve<DetailTvShowBloc>();
  TabController _tabController;
  double _offset = 0.0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      vsync: this,
      length: 6,
    );
    _scrollController = ScrollController()
      ..addListener(() => setState(() {
            _offset = _scrollController.offset;
          }));
    _detailTvShowBloc.onTvShowDetailInitiated(widget.id);
  }

  @override
  void dispose() {
    super.dispose();
    _detailTvShowBloc.close();
    _scrollController.dispose();
    _tabController.dispose();
  }

  bool get _showTitle {
    return _scrollController.hasClients &&
        _offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _detailTvShowBloc,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0XFF232931),
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImageWithRetry(
                    'https://image.tmdb.org/t/p/w780/' + widget.imageName,
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Color(0XFF0C0B10).withOpacity(0.0),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0XFF0C0B10),
                    Color(0XFF0C0B10).withOpacity(.7),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.0,
                    0.8,
                  ],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            Positioned.fill(
              child: NestedScrollView(
                controller: _scrollController,
                physics: AlwaysScrollableScrollPhysics(),
                headerSliverBuilder: (context, isScroll) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      child: SliverSafeArea(
                        top: false,
                        sliver: SliverAppBar(
                          backgroundColor: _showTitle
                              ? Color(0XFF0C0B10)
                              : Colors.transparent,
                          expandedHeight: 450,
                          pinned: true,
                          floating: false,
                          forceElevated: isScroll,
                          title: _showTitle
                              ? Text(
                                  widget.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              : null,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.pin,
                            background: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: SafeArea(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.loose,
                                            child: SizedBox(
                                              height: 250,
                                              width: 150,
                                              child: Center(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image(
                                                    image:
                                                        NetworkImageWithRetry(
                                                      'https://image.tmdb.org/t/p/w400/' +
                                                          widget.imageName,
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 8,
                                              top: 8,
                                              right: 8,
                                              left: 8,
                                            ),
                                            child: Center(
                                              child: Text(
                                                widget.name,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: SmoothStarRating(
                                              allowHalfRating: false,
                                              starCount: 5,
                                              rating: widget.rating,
                                              size: 20.0,
                                              color: Color(0XFFF3CC3E),
                                              borderColor: Colors.white54,
                                              spacing: 0.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(48),
                            child: Material(
                              color: _showTitle
                                  ? Color(0XFF0C0B10)
                                  : Colors.transparent,
                              child: TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                controller: _tabController,
                                isScrollable: true,
                                unselectedLabelColor: Colors.white54,
                                labelColor: Color(0XFFEEEEEE),
                                indicator: MD2Indicator(
                                    //it begins here
                                    indicatorHeight: 3,
                                    indicatorColor: Color(0XFFEB4B1F),
                                    indicatorSize: MD2IndicatorSize
                                        .normal //3 different modes tiny-normal-full
                                    ),
                                tabs: <Tab>[
                                  Tab(text: "Info"),
                                  Tab(text: "Media"),
                                  Tab(text: "Cast"),
                                  Tab(text: "Review"),
                                  Tab(text: "Season"),
                                  Tab(text: "Similar"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: BlocBuilder(
                  bloc: _detailTvShowBloc,
                  builder: (context, DetailTvShowState state) {
                    if (state.isLoading) {
                      return CustomLoadingIndicator(
                        color: Color(0XFFEB4B1F),
                      );
                    } else if (state.isSuccessful) {
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          DetailTvInfo(
                            state: state,
                            showTitle: _showTitle,
                            scaffoldKey: _scaffoldKey,
                            image: widget.imageName,
                          ),
                          DetailTvMedia(
                            state: state,
                            showTitle: _showTitle,
                          ),
                          DetailTvCast(
                            state: state,
                            showTitle: _showTitle,
                          ),
                          DetailTvReview(
                            state: state,
                            showTitle: _showTitle,
                          ),
                          DetailTvSeason(
                            state: state,
                            showTitle: _showTitle,
                          ),
                          DetailTvSimilar(
                            state: state,
                            showTitle: _showTitle,
                          ),
                        ],
                      );
                    } else {
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(child: Center(child: Text(state.error))),
                          Container(child: Center(child: Text(state.error))),
                          Container(child: Center(child: Text(state.error))),
                          Container(child: Center(child: Text(state.error))),
                          Container(child: Center(child: Text(state.error))),
                          Container(child: Center(child: Text(state.error))),
                        ],
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
