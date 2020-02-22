import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/detail_tv_show_ui.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailTvSimilar extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;

  DetailTvSimilar({
    Key key,
    @required this.state,
    @required this.showTitle,
  }) : super(key: key);

  @override
  _DetailTvSimilarState createState() => _DetailTvSimilarState();
}

class _DetailTvSimilarState extends State<DetailTvSimilar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      color: widget.showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 12),
        shrinkWrap: true,
        itemCount: widget.state.result.similar.results.length,
        itemBuilder: (context, index) {
          return Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 8),
            padding:
                const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
            child: GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (context) => DetailTvShowUi(
                    id: widget.state.result.similar.results[index].id,
                    imageName: widget
                        .state.result.similar.results[index].posterPath
                        .toString(),
                    name: widget.state.result.similar.results[index].name,
                    rating:
                        widget.state.result.similar.results[index].voteAverage /
                            2,
                  ),
                );
                Navigator.push(context, route);
              },
              child: Container(
                height: 200,
                child: Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // color: Color(0XFF232931).withOpacity(1),
                  color: Color(0xff393e46).withOpacity(0),
                  // color: Colors.transparent,
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
                                  widget.state.result.similar.results[index]
                                      .posterPath
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
                                      widget.state.result.similar.results[index]
                                          .name
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
                                      widget.state.result.similar.results[index]
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
                                      // onRatingChanged: (v) {
                                      //   rating = v;
                                      //   setState(() {});
                                      // },
                                      starCount: 5,
                                      rating: widget.state.result.similar
                                              .results[index].voteAverage /
                                          2,
                                      size: 16.0,
                                      // color: Color(0xff00adb5),
                                      color: Color(0XFFF3CC3E),
                                      borderColor: Colors.white54,
                                      spacing: 0.0,
                                    ),
                                    Text(
                                      '${widget.state.result.similar.results[index].firstAirDate.toString()} · ${widget.state.result.similar.results[index].popularity.toString()} ★',
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
