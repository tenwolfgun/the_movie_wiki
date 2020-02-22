import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

class DetailTvSeason extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;

  DetailTvSeason({
    Key key,
    @required this.state,
    this.showTitle,
  }) : super(key: key);

  @override
  _DetailTvSeasonState createState() => _DetailTvSeasonState();
}

class _DetailTvSeasonState extends State<DetailTvSeason> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      color: widget.showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 12),
        shrinkWrap: true,
        itemCount: widget.state.result.seasons.length,
        itemBuilder: (context, index) {
          return Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 8),
            padding:
                const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
            child: GestureDetector(
              onTap: () {
                print('Ok');
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
                                  widget.state.result.seasons[index].posterPath
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
                                      widget.state.result.seasons[index]
                                              ?.name ??
                                          '-',
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
                                      widget.state.result.seasons[index]
                                              ?.overview ??
                                          '-',
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
                                    Text(
                                      '${widget.state.result.seasons[index]?.airDate ?? '-'} · ${widget.state.result.seasons[index].episodeCount.toInt().toString()} episode',
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
