import 'dart:ui';
import 'package:date_format/date_format.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_loading_indicator.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/common_widget/media_backdrop.dart';
import 'package:the_movie_wiki/ui/common_widget/media_poster.dart';
import 'package:the_movie_wiki/ui/common_widget/media_trailer.dart';
import 'package:the_movie_wiki/ui/common_widget/view_all_backdrop.dart';
import 'package:the_movie_wiki/ui/common_widget/view_all_poster.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:the_movie_wiki/ui/popular_movie_by_genre/popular_movie_by_genre_ui.dart';

class DetailMovieUi extends StatefulWidget {
  DetailMovieUi({this.id, this.imageName, this.titleName, this.rating});

  final int id;
  final String imageName;
  final String titleName;
  final double rating;

  @override
  _DetailMovieUiState createState() => _DetailMovieUiState();
}

const kExpandedHeight = 350.0;

class _DetailMovieUiState extends State<DetailMovieUi>
    with TickerProviderStateMixin {
  final _currency = NumberFormat.simpleCurrency(locale: 'en_US');
  ScrollController _scrollController;
  final _detailMovieBloc = kiwi.Container().resolve<DetailMovieBloc>();
  // final BookmarkMoviesDao _bookmarkMoviesDao =
  //     BookmarkMoviesDao(MoorDatabase());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TabController _tabController;

  double _offset = 0.0;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      vsync: this,
      length: 5,
    );
    _scrollController = ScrollController()
      ..addListener(() => setState(() {
            _offset = _scrollController.offset;
          }));
    _detailMovieBloc.onMovieDetailInitiated(widget.id);
    super.initState();
  }

  @override
  void dispose() {
    _detailMovieBloc.close();
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  bool get _showTitle {
    return _scrollController.hasClients &&
        _offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _detailMovieBloc,
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
              child: new BackdropFilter(
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
                                  widget.titleName,
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
                                                widget.titleName,
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
                                  ? Color(0XFF0C0B10)
                                  : Colors.transparent,
                              child: TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                controller: _tabController,
                                isScrollable: true,
                                unselectedLabelColor: Colors.white54,
                                labelColor: Color(0XFFEEEEEE),
                                indicator: MD2Indicator(
                                    indicatorHeight: 3,
                                    indicatorColor: Color(0XFFEB4B1F),
                                    indicatorSize: MD2IndicatorSize.normal),
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
                body: BlocBuilder(
                  bloc: _detailMovieBloc,
                  builder: (context, DetailMovieState state) {
                    if (state.isLoading) {
                      return CustomLoadingIndicator(
                        color: Color(0XFFEB4B1F),
                      );
                    } else if (state.isSuccessful) {
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          _buildInfo(state),
                          _buildMedia(state),
                          _buildCast(state),
                          _buildReview(state),
                          _buildSimilar(state),
                        ],
                      );
                    } else {
                      // setState(() {
                      //   _bookmarkedMovie = 5;
                      // });
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
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
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(DetailMovieState state) {
    return Stack(
      children: <Widget>[
        Container(
          color: _showTitle ? null : null,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    color: _showTitle ? Color(0XFF0C0B10) : null,
                    child: Container(
                      child: ExpandablePanel(
                        collapsed: Text(
                          state.result.overview,
                          style: TextStyle(
                              color: Colors.white54,
                              height: 1.5,
                              letterSpacing: 0),
                          textAlign: TextAlign.left,
                          softWrap: true,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        expanded: Text(
                          state.result.overview,
                          style: TextStyle(
                              color: Colors.white54,
                              height: 1.5,
                              letterSpacing: 0),
                          textAlign: TextAlign.left,
                          softWrap: true,
                        ),
                        hasIcon: false,
                        tapBodyToCollapse: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: _showTitle ? Color(0XFF0C0B10) : null,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Original Title',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          state.result.originalTitle,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Status',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.status,
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Runtime',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.runtime == null
                                    ? '-'
                                    : '${state.result.runtime.toInt().toString()} min',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Release Date',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.releaseDate == null
                                    ? "-"
                                    : formatDate(
                                        DateTime.parse(
                                            state.result.releaseDate),
                                        [MM, ' ', dd, ', ', yyyy]),
                                // state.result.releaseDate,
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Original Language',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.originalLanguage,
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Budget',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.budget == null
                                    ? '-'
                                    : '${_currency.format(state.result.budget).toString()}',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Revenue',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                state.result.revenue == null
                                    ? '-'
                                    : '${_currency.format(state.result.revenue).toString()}',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          'Production Countries',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${state.result.productionCountries.map((i) => i.name).join(', ')}',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Genre',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Container(
                          child: Wrap(
                            spacing: 10,
                            children: _buildGenreChip(state),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 8,
          // alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor:
                _showTitle ? Color(0XFF0C0B10) : Colors.transparent,
            onPressed: () {
              if (state.isFavorite == 1) {
                _detailMovieBloc.onRemoveFavoriteMovie(state.result.id.toInt());
                final snackBar = SnackBar(
                  content: Text('Removed from favorite movies'),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      _scaffoldKey.currentState.hideCurrentSnackBar();
                    },
                  ),
                );
                _scaffoldKey.currentState.showSnackBar(snackBar);
              } else {
                _detailMovieBloc.onAddFavoriteMovie(
                  movieId: state.result.id.toInt(),
                  title: state.result.title.toString(),
                  posterPath: state.result.posterPath.toString(),
                  voteAverage: state.result.voteAverage / 2,
                );
                final snackBar = SnackBar(
                  content: Text('Added to favorite movies'),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      _scaffoldKey.currentState.hideCurrentSnackBar();
                    },
                  ),
                );
                _scaffoldKey.currentState.showSnackBar(snackBar);
              }
            },
            child: state.isFavorite == 1
                ? Icon(
                    Icons.favorite,
                    color: Color(0XFFEB4B1F),
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Color(0XFFEB4B1F),
                  ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildGenreChip(DetailMovieState state) {
    return state.result.genres.map((i) {
      return InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => PopularMovieByGenreUi(
              genreId: i.id.toString(),
              genreName: i.name.toString(),
            ),
          );
          Navigator.push(context, route);
        },
        child: Chip(
          backgroundColor: Color(0XFFEB4B1F),
          label: Text(
            i.name,
            style: TextStyle(
              color: Color(0XFFEEEEEE),
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildMedia(DetailMovieState state) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          color: _showTitle ? Color(0XFF0C0B10) : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  left: 20,
                  bottom: 16,
                ),
                child: Text(
                  'Trailers',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ),
              MediaTrailer(detailMovieState: state),
              Padding(
                padding: EdgeInsets.only(
                  top: 36,
                  left: 20,
                  bottom: 16,
                  right: 12,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Posters',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(
                            builder: (context) => ViewAllPoster(
                              state: state,
                            ),
                          );
                          Navigator.push(context, route);
                        },
                        child: Text(
                          'See All',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFFEB4B1F),
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MediaPoster(detailMovieState: state),
              Padding(
                padding: EdgeInsets.only(
                  top: 36,
                  left: 20,
                  bottom: 16,
                  right: 12,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Backdrops',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(
                            builder: (context) => ViewAllBackdrop(
                              detailMovieState: state,
                            ),
                          );
                          Navigator.push(context, route);
                        },
                        child: Text(
                          'See All',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFFEB4B1F),
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MediaBackdrop(detailMovieState: state)
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCast(DetailMovieState state) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 0),
      color: _showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: state.result.credits.cast.length,
        itemBuilder: (context, index) {
          return Container(
            height: 125,
            padding: EdgeInsets.only(bottom: 8),
            child: Card(
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xff393e46).withOpacity(0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 0.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: NetworkImageWithRetry(
                          'https://image.tmdb.org/t/p/w400/' +
                              state.result.credits.cast[index].profilePath
                                  .toString(),
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 8.0, 2.0, 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  state.result.credits.cast[index].name
                                      .toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFEEEEEE),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(bottom: 2.0)),
                                Text(
                                  'As ${state.result.credits.cast[index].character.toString()}',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildReview(DetailMovieState state) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      color: _showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: state.result.reviews.results.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                state.result.reviews.results[index].author.toString(),
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: ExpandablePanel(
                collapsed: Text(
                  state.result.reviews.results[index].content.toString(),
                  style: TextStyle(
                      color: Colors.white54, height: 1.5, letterSpacing: 0),
                  textAlign: TextAlign.left,
                  softWrap: true,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  state.result.reviews.results[index].content.toString(),
                  style: TextStyle(
                      color: Colors.white54, height: 1.5, letterSpacing: 0),
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),
                hasIcon: false,
                tapBodyToCollapse: true,
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSimilar(DetailMovieState state) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      color: _showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: state.result.similar.results.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
            child: GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (context) => DetailMovieUi(
                    id: state.result.similar.results[index].id,
                    imageName: state.result.similar.results[index].posterPath
                        .toString(),
                    titleName: state.result.similar.results[index].title,
                    rating: state.result.similar.results[index].voteAverage / 2,
                  ),
                );
                Navigator.push(context, route);
              },
              child: Container(
                height: 200,
                child: Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xff393e46).withOpacity(0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 0.7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            image: NetworkImageWithRetry(
                              'https://image.tmdb.org/t/p/w400/' +
                                  state.result.similar.results[index].posterPath
                                      .toString(),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 8.0, 2.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      state.result.similar.results[index].title
                                          .toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFEEEEEE),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(bottom: 2.0)),
                                    Text(
                                      state.result.similar.results[index]
                                          .overview
                                          .toString(),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        height: 1.5,
                                        fontSize: 14.0,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SmoothStarRating(
                                      allowHalfRating: false,
                                      starCount: 5,
                                      rating: state.result.similar
                                              .results[index].voteAverage /
                                          2,
                                      size: 16.0,
                                      color: Color(0XFFF3CC3E),
                                      borderColor: Colors.white54,
                                      spacing: 0.0,
                                    ),
                                    Text(
                                      '${state.result.similar.results[index]?.releaseDate ?? '-'} · ${state.result.similar.results[index].popularity.toString()} ★',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
