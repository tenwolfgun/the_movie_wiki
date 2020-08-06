import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../../../../core/extension/extension_helper.dart';
import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/error_state.dart';
import '../../../../../../core/widget/image_loader.dart';
import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../../../../../../injection.dart';
import '../bloc/detail_movie_bloc.dart';
import '../widgets/detail_body_widget.dart';

class TestDetailMovie extends StatefulWidget {
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;

  const TestDetailMovie({
    Key key,
    this.id,
    this.posterPath,
    this.title,
    this.rating,
    this.overview,
    this.releaseDate,
  }) : super(key: key);

  @override
  _TestDetailMovieState createState() => _TestDetailMovieState();
}

const kExpandedHeight = 500.0;

class _TestDetailMovieState extends State<TestDetailMovie>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  final _bloc = getIt<DetailMovieBloc>();
  bool _showTitle = false;
  int carouselIndex = 0;

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
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    _scrollController.addListener(_scrollListener);
    _initBloc();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0XFF0C0B10),
      backgroundColor: Colors.white10,
      body: BlocBuilder<DetailMovieBloc, DetailMovieState>(
          cubit: _bloc,
          builder: (_, state) {
            return state.map(
              initial: (_) => const InitialState(),
              loading: (_) => const LoadingState(),
              loaded: (state) {
                return buildNestedScrollView(state);
              },
              error: (state) => ErrorState(
                errorMessage: state.errorMessage,
                onPressed: _initBloc,
              ),
            );
          }),
    );
  }

  NestedScrollView buildNestedScrollView(Loaded state) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (_, isScroll) {
        return <Widget>[
          buildSliverAppBar(isScroll, state),
        ];
      },
      body: DetailMovieBodyWidget(
        widget: widget,
        state: state,
      ),
    );
  }

  SliverAppBar buildSliverAppBar(bool isScroll, Loaded state) {
    return SliverAppBar(
      backgroundColor: const Color(0XFF0C0B10),
      forceElevated: isScroll,
      pinned: true,
      expandedHeight: kExpandedHeight,
      title: _showTitle
          ? Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : null,
      flexibleSpace: buildFlexibleSpaceBar(state),
      bottom: PreferredSize(
        child: Container(
          height: 3,
          color: Colors.white24,
        ),
        preferredSize: Size.fromHeight(3),
      ),
    );
  }

  FlexibleSpaceBar buildFlexibleSpaceBar(Loaded state) {
    return FlexibleSpaceBar(
      centerTitle: false,
      background: Column(
        children: <Widget>[
          buildCarousel(state),
          buildTitle(),
        ],
      ),
    );
  }

  Flexible buildTitle() {
    return Flexible(
      flex: 1,
      child: Container(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                        widget.posterPath.toString(),
                    placeholder: (_, __) {
                      return const ImageLoader();
                    },
                    errorWidget: (_, __, ___) {
                      return const ErrorImage();
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      right: 16,
                      left: 8,
                    ),
                    child: Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 50.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      right: 16,
                      left: 8,
                      bottom: 16,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      right: 16,
                      left: 8,
                      bottom: 16,
                    ),
                    child: Text(
                      widget.releaseDate != null
                          ? widget.releaseDate.toDate()
                          : '',
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.white54,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Flexible buildCarousel(Loaded state) {
    return Flexible(
      flex: 2,
      child: Container(
        width: ScreenUtil.screenWidth,
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0XFF0C0B10),
                Colors.transparent,
              ],
            ).createShader(
              Rect.fromLTRB(
                0,
                rect.height - 300,
                rect.width,
                rect.height,
              ),
            );
          },
          blendMode: BlendMode.dstIn,
          child: Stack(
            children: [
              Positioned.fill(
                child: state.detailMovie.images.backdrops.isEmpty
                    ? CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                            widget.posterPath.toString(),
                        placeholder: (_, __) {
                          return const ImageLoader();
                        },
                        errorWidget: (_, __, ___) {
                          return const ErrorImage();
                        },
                      )
                    : CarouselSlider.builder(
                        itemCount:
                            state.detailMovie.images.backdrops.take(5).length,
                        itemBuilder: (_, i) {
                          return CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                                state.detailMovie.images.backdrops[i].filePath
                                    .toString(),
                            placeholder: (_, __) {
                              return const ImageLoader();
                            },
                            errorWidget: (_, __, ___) {
                              return const ErrorImage();
                            },
                          );
                        },
                        options: CarouselOptions(
                            aspectRatio: 7 / 6,
                            viewportFraction: 1,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 1000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            onPageChanged: (i, _) {
                              setState(() {
                                carouselIndex = i;
                              });
                            }),
                      ),
              ),
              Positioned(
                right: ScreenUtil.screenWidth * 0.03,
                top: ScreenUtil.screenHeight * 0.28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: state.detailMovie.images.backdrops.take(5).map(
                    (e) {
                      int index = state.detailMovie.images.backdrops.indexOf(e);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 2.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: carouselIndex == index
                              ? Colors.red
                              : Colors.white,
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
