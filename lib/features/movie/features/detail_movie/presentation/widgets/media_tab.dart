import 'package:flutter/material.dart';
import 'package:the_movie_wiki/core/widget/media_trailer.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';

class MediaTab extends StatelessWidget {
  final bool _showTitle;
  final Loaded state;

  const MediaTab({
    Key key,
    bool showTitle,
    this.state,
  })  : _showTitle = showTitle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(top: 0),
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          color: _showTitle ? const Color(0XFF0C0B10) : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(
              //     top: 8,
              //     left: 20,
              //     bottom: 16,
              //   ),
              //   child: Text(
              //     'Trailers',
              //     textAlign: TextAlign.start,
              //     style: TextStyle(
              //       fontSize: 50.sp,
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //       height: 1.5,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  // left: 20,
                  bottom: 16,
                ),
                child: MediaTrailer(
                  detailMovieState: state,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
