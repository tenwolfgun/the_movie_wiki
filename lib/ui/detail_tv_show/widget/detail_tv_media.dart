import 'package:flutter/material.dart';
import 'package:the_movie_wiki/ui/common_widget/media_backdrop.dart';
import 'package:the_movie_wiki/ui/common_widget/media_poster.dart';
import 'package:the_movie_wiki/ui/common_widget/media_trailer.dart';
import 'package:the_movie_wiki/ui/common_widget/view_all_backdrop.dart';
import 'package:the_movie_wiki/ui/common_widget/view_all_poster.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

class DetailTvMedia extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;

  DetailTvMedia({
    Key key,
    @required this.state,
    @required this.showTitle,
  }) : super(key: key);

  @override
  _DetailTvMediaState createState() => _DetailTvMediaState();
}

class _DetailTvMediaState extends State<DetailTvMedia> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          color: widget.showTitle ? Color(0XFF0C0B10) : null,
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
                    height: 1.5,
                  ),
                ),
              ),
              MediaTrailer(detailTvShowState: widget.state),
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
                              tvShowState: widget.state,
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
              MediaPoster(detailTvShowState: widget.state),
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
                              detailTvShowState: widget.state,
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
              MediaBackdrop(detailTvShowState: widget.state),
            ],
          ),
        ),
      ],
    );
  }
}
