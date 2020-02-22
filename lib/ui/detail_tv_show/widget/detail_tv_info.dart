import 'package:date_format/date_format.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/popular_tv_show_by_genre/popular_tv_show_by_genre_ui.dart';

class DetailTvInfo extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String image;

  DetailTvInfo({
    Key key,
    @required this.state,
    @required this.showTitle,
    @required this.scaffoldKey,
    @required this.image,
  }) : super(key: key);

  @override
  _DetailTvInfoState createState() => _DetailTvInfoState();
}

class _DetailTvInfoState extends State<DetailTvInfo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: widget.showTitle ? null : null,
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
                    color: widget.showTitle ? Color(0XFF0C0B10) : null,
                    child: Container(
                      child: ExpandablePanel(
                        collapsed: Text(
                          widget.state.result.overview,
                          style: TextStyle(
                              color: Colors.white54,
                              // fontSize: 14,
                              height: 1.5,
                              letterSpacing: 0),
                          textAlign: TextAlign.left,
                          // textScaleFactor: 1,
                          softWrap: true,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        expanded: Text(
                          widget.state.result.overview,
                          style: TextStyle(
                              color: Colors.white54,
                              // fontSize: 14,
                              height: 1.5,
                              letterSpacing: 0),
                          textAlign: TextAlign.left,
                          softWrap: true,
                          // textScaleFactor: 1,
                        ),
                        hasIcon: false,
                        tapBodyToCollapse: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: widget.showTitle ? Color(0XFF0C0B10) : null,
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
                        subtitle: widget.state.result.originalName == null
                            ? Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            : Text(
                                widget.state.result.originalName,
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
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
                              subtitle: widget.state.result.status == null
                                  ? Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 14,
                                        height: 1.5,
                                        color: Colors.white54,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  : Text(
                                      widget.state.result.status,
                                      style: TextStyle(
                                        fontSize: 14,
                                        height: 1.5,
                                        color: Colors.white54,
                                        // fontWeight: FontWeight.bold,
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
                                widget.state.result.episodeRunTime == null
                                    ? '-'
                                    : '${widget.state.result.episodeRunTime.map((i) => i.toInt().toString()).join(', ')}',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
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
                                widget.state.result.firstAirDate == null
                                    ? "-"
                                    : formatDate(
                                        DateTime.parse(
                                            widget.state.result.firstAirDate),
                                        [MM, ' ', dd, ', ', yyyy]),
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
                              subtitle:
                                  widget.state.result.originalLanguage == null
                                      ? Text(
                                          '-',
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 1.5,
                                            color: Colors.white54,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : Text(
                                          widget.state.result.originalLanguage,
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 1.5,
                                            color: Colors.white54,
                                            // fontWeight: FontWeight.bold,
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
                                'Status',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                widget.state.result.status == null
                                    ? '-'
                                    : widget.state.result.status.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Type',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                widget.state.result.type == null
                                    ? '-'
                                    : widget.state.result.type.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Total Episodes',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                widget.state.result.numberOfEpisodes == null
                                    ? '-'
                                    : widget.state.result.numberOfEpisodes
                                        .toInt()
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Total Seasons',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                widget.state.result.numberOfSeasons == null
                                    ? '-'
                                    : widget.state.result.numberOfSeasons
                                        .toInt()
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Colors.white54,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          'Production Companies',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${widget.state.result.productionCompanies.map((i) => i.name).join(', ')}',
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
                            children: _buildGenreChip(widget.state),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Container(
                    color: widget.showTitle ? Color(0XFF0C0B10) : null,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Last Episode',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            isThreeLine: true,
                            subtitle: Container(
                              height: 200,
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: widget.state.result
                                                  .lastEpisodeToAir ==
                                              null
                                          ? Center(
                                              child: Icon(
                                                Icons.error_outline,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Image(
                                              image: NetworkImageWithRetry(
                                                'https://image.tmdb.org/t/p/w400/' +
                                                    widget
                                                        .state
                                                        .result
                                                        .lastEpisodeToAir
                                                        .stillPath
                                                        .toString(),
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 150,
                                    top: 0,
                                    left:
                                        MediaQuery.of(context).size.width * 0.7,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ),
                                      ),
                                      child: Center(
                                        child: widget.state.result
                                                    .nextEpisodeToAir ==
                                                null
                                            ? Text(
                                                '-',
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )
                                            : Text(
                                                'Episode ${widget.state.result.lastEpisodeToAir.episodeNumber.toInt().toString()} ',
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                                textAlign: TextAlign.end,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 150,
                                    right: 0,
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black54,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          top: 16,
                                          right: 8,
                                        ),
                                        child: widget.state.result
                                                    .nextEpisodeToAir ==
                                                null
                                            ? Text(
                                                '-',
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )
                                            : Text(
                                                widget.state.result
                                                    .lastEpisodeToAir.name
                                                    .toString(),
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Next Episode',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            isThreeLine: true,
                            subtitle: Container(
                              height: 200,
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: widget.state.result
                                                  .nextEpisodeToAir ==
                                              null
                                          ? Center(
                                              child: Icon(
                                                Icons.error_outline,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Image(
                                              image: NetworkImageWithRetry(
                                                'https://image.tmdb.org/t/p/w400/' +
                                                    widget
                                                        .state
                                                        .result
                                                        .nextEpisodeToAir
                                                        .stillPath
                                                        .toString(),
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 150,
                                    top: 0,
                                    left:
                                        MediaQuery.of(context).size.width * 0.7,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black54,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          )),
                                      child: Center(
                                        child: widget.state.result
                                                    .nextEpisodeToAir ==
                                                null
                                            ? Text(
                                                '-',
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )
                                            : Text(
                                                'Episode ${widget.state.result.nextEpisodeToAir.episodeNumber.toInt().toString()} ',
                                                style: TextStyle(
                                                  color: Colors.white70,
//                                    height: 1.5,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                                textAlign: TextAlign.end,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 150,
                                    right: 0,
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black54,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          top: 16,
                                          right: 8,
                                        ),
                                        child: widget.state.result
                                                    .nextEpisodeToAir ==
                                                null
                                            ? Text(
                                                '-',
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )
                                            : Text(
                                                widget.state.result
                                                    .nextEpisodeToAir.name
                                                    .toString(),
                                                style: TextStyle(
                                                  color: Colors.white70,
//                                    height: 1.5,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
        Positioned(
          bottom: 20,
          right: 8,
          child: FloatingActionButton(
            backgroundColor:
                widget.showTitle ? Color(0XFF0C0B10) : Colors.transparent,
            onPressed: () {
              if (widget.state.isFavorite == 1) {
                BlocProvider.of<DetailTvShowBloc>(context)
                    .onRemoveFavoriteTvShow(
                  tvShowId: widget.state.result.id.toInt(),
                );
                final snackBar = SnackBar(
                  content: Text('Removed from favorite tv show'),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      widget.scaffoldKey.currentState.hideCurrentSnackBar();
                    },
                  ),
                );
                widget.scaffoldKey.currentState.showSnackBar(snackBar);
              } else {
                BlocProvider.of<DetailTvShowBloc>(context).onAddFavoriteTvShow(
                  tvShowId: widget.state.result.id.toInt(),
                  name: widget.state.result.name.toString(),
                  posterPath: widget.image.toString(),
                  voteAverage: widget.state.result.voteAverage / 2,
                );
                final snackBar = SnackBar(
                  content: Text('Added to favorite tv show'),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      widget.scaffoldKey.currentState.hideCurrentSnackBar();
                    },
                  ),
                );
                widget.scaffoldKey.currentState.showSnackBar(snackBar);
              }
            },
            child: widget.state.isFavorite == 1
                ? Icon(
                    Icons.favorite,
                    color: Color(0XFFEB4B1F),
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Color(0XFFEB4B1F),
                  ),
          ),
        )
      ],
    );
  }

  List<Widget> _buildGenreChip(DetailTvShowState state) {
    return state.result.genres.map((i) {
      return InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => PopularTvShowByGenreUi(
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
}
