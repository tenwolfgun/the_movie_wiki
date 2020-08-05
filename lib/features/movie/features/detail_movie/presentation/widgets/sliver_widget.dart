import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/image_loader.dart';
import '../bloc/detail_movie_bloc.dart';

class SliverWidget extends StatefulWidget {
  final Loaded state;
  final String posterPath;
  final double kExpandedHeight;
  final bool showTitle;
  final String title;
  final double rating;
  final String releaseDate;
  final TabController tabController;
  final bool isScroll;

  const SliverWidget({
    Key key,
    this.state,
    this.posterPath,
    this.kExpandedHeight,
    this.showTitle,
    this.title,
    this.rating,
    this.releaseDate,
    this.tabController,
    this.isScroll,
  }) : super(key: key);

  @override
  _SliverWidgetState createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverSafeArea(
        top: false,
        sliver: SliverAppBar(
          snap: false,
          primary: true,
          floating: false,
          forceElevated: widget.isScroll,
          backgroundColor: const Color(0XFF0C0B10),
          brightness: Brightness.dark,
          expandedHeight: widget.kExpandedHeight,
          pinned: true,
          iconTheme: widget.showTitle
              ? const IconThemeData(
                  color: Colors.white,
                )
              : const IconThemeData(
                  color: Colors.black,
                ),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            centerTitle: false,
            title: widget.showTitle
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
            background: Column(
              children: <Widget>[
                Expanded(
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
                            child: widget
                                    .state.detailMovie.images.backdrops.isEmpty
                                ? CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    imageUrl:
                                        'https://image.tmdb.org/t/p/w780/' +
                                            widget.posterPath.toString(),
                                    placeholder: (_, __) {
                                      return const ImageLoader();
                                    },
                                    errorWidget: (_, __, ___) {
                                      return const ErrorImage();
                                    },
                                  )
                                : CarouselSlider.builder(
                                    itemCount: widget
                                        .state.detailMovie.images.backdrops
                                        .take(5)
                                        .length,
                                    itemBuilder: (_, i) {
                                      return CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        imageUrl:
                                            'https://image.tmdb.org/t/p/w780/' +
                                                widget.state.detailMovie.images
                                                    .backdrops[i].filePath
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
                                        aspectRatio: 6 / 5,
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
                            // bottom: ScreenUtil.screenHeight * 0.17,
                            // left: ScreenUtil.screenWidth * 0.83,
                            right: ScreenUtil.screenWidth * 0.03,
                            top: ScreenUtil.screenHeight * 0.28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: widget
                                  .state.detailMovie.images.backdrops
                                  .take(5)
                                  .map((e) {
                                int index = widget
                                    .state.detailMovie.images.backdrops
                                    .indexOf(e);
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: carouselIndex == index
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AspectRatio(
                            aspectRatio: 0.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
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
                                  widget.releaseDate,
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
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Material(
              color: const Color(0XFF0C0B10),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                controller: widget.tabController,
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
                  Tab(text: "Review"),
                  Tab(text: "Similar"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
