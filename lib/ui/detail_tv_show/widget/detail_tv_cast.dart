import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

class DetailTvCast extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;

  DetailTvCast({
    Key key,
    @required this.state,
    @required this.showTitle,
  }) : super(key: key);

  @override
  _DetailTvCastState createState() => _DetailTvCastState();
}

class _DetailTvCastState extends State<DetailTvCast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 0),
      color: widget.showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: widget.state.result.credits.cast.length,
        itemBuilder: (context, index) {
          return Container(
            height: 125,
            padding: EdgeInsets.only(bottom: 8),
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
                              widget
                                  .state.result.credits.cast[index].profilePath
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
                                  widget.state.result.credits.cast[index].name
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
                                  'As ${widget.state.result.credits.cast[index].character.toString()}',
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
}
