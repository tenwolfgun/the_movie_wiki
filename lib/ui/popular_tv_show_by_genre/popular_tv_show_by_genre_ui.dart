import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/detail_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/popular_tv_show_by_genre/bloc/bloc.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularTvShowByGenreUi extends StatefulWidget {
  final String genreId;
  final String genreName;

  PopularTvShowByGenreUi({
    Key key,
    @required this.genreId,
    @required this.genreName,
  }) : super(key: key);

  @override
  _PopularTvShowByGenreUiState createState() => _PopularTvShowByGenreUiState();
}

class _PopularTvShowByGenreUiState extends State<PopularTvShowByGenreUi> {
  final _popularTvShowByGenreBloc =
      kiwi.Container().resolve<PopularTvShowByGenreBloc>();
  final _scrollController = ScrollController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    page = 1;
    _popularTvShowByGenreBloc.onPopularTvShowByGenreInitiated(
        widget.genreId, page);
  }

  @override
  void dispose() {
    _popularTvShowByGenreBloc.close();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _popularTvShowByGenreBloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      backgroundColor: Color(0XFF0D0C11),
      appBar: AppBar(
        title: Text(
          'Popular ${widget.genreName} TV Show',
        ),
        brightness: Brightness.dark,
        backgroundColor: Color(0XFF0D0C11),
        elevation: 8,
      ),
      body: BlocBuilder(
        bloc: _popularTvShowByGenreBloc,
        builder: (context, PopularTvShowByGenreState state) {
          if (state.isLoading) {
            return _buildLoader();
          } else if (state.isSuccessful) {
            return _popularTvShowByGenre(state);
          } else {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  Text(
                    state.error,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildLoader() {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Color(0XFFEB4B1F),
        ),
      ),
    );
  }

  Widget _popularTvShowByGenre(PopularTvShowByGenreState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 12),
        shrinkWrap: true,
        controller: _scrollController,
        itemCount: state.endOfResult
            ? state.getResults.length
            : state.getResults.length + 1,
        itemBuilder: (contex, index) {
          return index >= state.getResults.length
              ? _buildLoader()
              : Column(
                  children: <Widget>[
                    _buildListItem(state.getResults[index]),
                    Divider(
                      color: Colors.transparent,
                      indent: 16,
                      endIndent: 16,
                    )
                  ],
                );
        },
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollNotification &&
        _scrollController.position.extentAfter == 0) {
      page++;
      _popularTvShowByGenreBloc.onPopularTvShowByGenreNextResult(
          widget.genreId, page);
    }
    return false;
  }

  Widget _buildListItem(TvShowResult result) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
      child: InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => DetailTvShowUi(
              id: result.id,
              imageName: result.posterPath.toString(),
              name: result.name,
              rating: result.voteAverage / 2,
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
                            result.posterPath.toString(),
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
                                result.name.toString(),
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
                                result.overview.toString(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SmoothStarRating(
                                allowHalfRating: false,
                                starCount: 5,
                                rating: result.voteAverage / 2,
                                size: 16.0,
                                color: Color(0XFFF3CC3E),
                                borderColor: Colors.white54,
                                spacing: 0.0,
                              ),
                              Text(
                                '${result.firstAirDate.toString()} · ${result.popularity.toString()} ★',
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
  }
}
