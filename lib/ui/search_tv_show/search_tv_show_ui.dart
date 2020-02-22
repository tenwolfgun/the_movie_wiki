import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_error_message.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_loading_indicator.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/detail_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/search_tv_show/bloc/bloc.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SearchTvShowUi extends StatefulWidget {
  final String searchQuery;

  SearchTvShowUi({
    Key key,
    @required this.searchQuery,
  }) : super(key: key);

  @override
  _SearchTvShowUiState createState() => _SearchTvShowUiState();
}

class _SearchTvShowUiState extends State<SearchTvShowUi>
    with AutomaticKeepAliveClientMixin {
  final _searchTvShowBloc = kiwi.Container().resolve<SearchTvShowBloc>();
  final _scrollController = ScrollController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    page = 1;
    _searchTvShowBloc.onSearchTvShowInitiated(widget.searchQuery, page);
  }

  @override
  void dispose() {
    _searchTvShowBloc.close();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => _searchTvShowBloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      backgroundColor: Color(0XFF0C0B10),
      body: BlocBuilder(
        bloc: _searchTvShowBloc,
        builder: (context, SearchTvShowState state) {
          if (state.isLoading) {
            return CustomLoadingIndicator(
              color: Color(0XFFEB4B1F),
            );
          } else if (state.isSuccessful) {
            return _searchMovies(state);
          } else {
            return CustomErrorMessage(
              errorMessage: state.error,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.5,
              ),
              icon: FontAwesomeIcons.sadTear,
              iconColor: Colors.white,
              iconSize: 30,
            );
          }
        },
      ),
    );
  }

  Widget _searchMovies(SearchTvShowState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScroolNotification,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 12),
        controller: _scrollController,
        itemCount: state.endOfResult
            ? state.getResults.length
            : state.getResults.length + 1,
        itemBuilder: (context, index) {
          return index >= state.getResults.length
              ? CustomLoadingIndicator(
                  color: Colors.transparent,
                )
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

  bool _handleScroolNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 25) {
      page++;
      _searchTvShowBloc.onSearchTvShowNextResult(widget.searchQuery, page);
    }
    return false;
  }

  Widget _buildListItem(TvShowResult result) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
      child: GestureDetector(
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
