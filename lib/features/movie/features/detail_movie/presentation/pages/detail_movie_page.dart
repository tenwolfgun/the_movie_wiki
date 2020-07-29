import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/error_state.dart';
import '../../../../../../core/widget/image_loader.dart';
import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../../../../../../injection.dart';
import '../bloc/detail_movie_bloc.dart';
import '../widgets/info_tab.dart';

class DetailMoviePage extends StatefulWidget {
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;

  const DetailMoviePage(
      {Key key,
      this.id,
      this.posterPath,
      this.title,
      this.rating,
      this.overview,
      this.releaseDate,
      s})
      : super(key: key);

  @override
  _DetailMoviePageState createState() => _DetailMoviePageState();
}

const kExpandedHeight = 350.0;

class _DetailMoviePageState extends State<DetailMoviePage>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  TabController _tabController;
  final _bloc = getIt<DetailMovieBloc>();

  bool _showTitle = false;

  bool get _lastStatus {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  _scrollListener() {
    if (_lastStatus != _showTitle) {
      setState(() {
        _showTitle = _lastStatus;
      });
    }
  }

  _initBloc() {
    _bloc.add(DetailMovieEvent.getData(id: widget.id));
  }

  @override
  void initState() {
    _initBloc();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF232931),
      body: Stack(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: 'https://image.tmdb.org/t/p/w780/' + widget.posterPath,
            imageBuilder: (_, imageProvider) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFF0C0B10).withOpacity(0.0),
                    ),
                  ),
                ),
              );
            },
            placeholder: (_, __) => const ImageLoader(),
            errorWidget: (_, __, ___) => const ErrorImage(),
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
              physics: AlwaysScrollableScrollPhysics(),
              controller: _scrollController,
              headerSliverBuilder: (context, isScroll) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                      context,
                    ),
                    sliver: SliverSafeArea(
                      top: false,
                      sliver: SliverAppBar(
                        backgroundColor: _showTitle
                            ? const Color(0XFF0C0B10)
                            : Colors.transparent,
                        expandedHeight: 480,
                        pinned: true,
                        floating: false,
                        forceElevated: isScroll,
                        title: _showTitle
                            ? Text(
                                widget.title,
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
                                            height: 650.w,
                                            width: 400.w,
                                            child: Center(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: CachedNetworkImage(
                                                  fit: BoxFit.fill,
                                                  imageUrl:
                                                      'https://image.tmdb.org/t/p/w400/' +
                                                          widget.posterPath
                                                              .toString(),
                                                  placeholder: (_, __) =>
                                                      const ImageLoader(),
                                                  errorWidget: (_, __, ___) =>
                                                      const ErrorImage(),
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
                                              widget.title,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 58.sp,
                                                height: 1.5,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: SmoothStarRating(
                                              allowHalfRating: false,
                                              starCount: 5,
                                              rating: widget.rating / 2,
                                              size: 58.sp,
                                              color: const Color(0XFFF3CC3E),
                                              borderColor: Colors.white54,
                                              spacing: 0.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        bottom: PreferredSize(
                          preferredSize: Size.fromHeight(48),
                          child: Material(
                            color: _showTitle
                                ? const Color(0XFF0C0B10)
                                : Colors.transparent,
                            child: TabBar(
                              indicatorSize: TabBarIndicatorSize.label,
                              controller: _tabController,
                              isScrollable: true,
                              unselectedLabelColor: Colors.white54,
                              labelColor: const Color(0XFFEEEEEE),
                              indicator: MD2Indicator(
                                indicatorHeight: 3,
                                indicatorColor: const Color(0XFFEB4B1F),
                                indicatorSize: MD2IndicatorSize.normal,
                              ),
                              labelStyle: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              tabs: <Tab>[
                                Tab(text: "Info"),
                                Tab(text: "Media"),
                                Tab(text: "Cast"),
                                Tab(text: "Review"),
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
              body: BlocBuilder<DetailMovieBloc, DetailMovieState>(
                cubit: _bloc,
                builder: (_, state) {
                  return state.map(
                    initial: (_) => const InitialState(),
                    loading: (_) => const LoadingState(),
                    loaded: (state) {
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          InfoTab(
                            state: state,
                            showTitle: _showTitle,
                            overview: widget.overview,
                            releaseDate: widget.releaseDate,
                          ),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      );
                    },
                    error: (state) {
                      return ErrorState(
                        errorMessage: state.errorMessage,
                      );
                    },
                  );
                },
              ),
              // body: TabBarView(
              //   controller: _tabController,
              //   children: <Widget>[
              //     Container(
              //       child: ListView.builder(
              //         itemBuilder: (_, i) {
              //           return ListTile(
              //             title: Text(
              //               'test',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           );
              //         },
              //         itemCount: 10,
              //       ),
              //     ),
              //     Container(),
              //     Container(),
              //     Container(),
              //     Container(),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
