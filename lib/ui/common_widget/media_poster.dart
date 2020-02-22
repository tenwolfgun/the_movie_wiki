import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

class MediaPoster extends StatefulWidget {
  final DetailMovieState detailMovieState;
  final DetailTvShowState detailTvShowState;

  MediaPoster({
    Key key,
    this.detailMovieState,
    this.detailTvShowState,
  }) : super(key: key);

  @override
  _MediaPosterState createState() => _MediaPosterState();
}

class _MediaPosterState extends State<MediaPoster> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 16),
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.detailMovieState == null
            ? widget.detailTvShowState.result.images.posters.take(5).length
            : widget.detailMovieState.result.images.posters.take(5).length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 175,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Image(
                              image: NetworkImageWithRetry(
                                  widget.detailMovieState == null
                                      ? 'https://image.tmdb.org/t/p/w780/' +
                                          widget.detailTvShowState.result.images
                                              .posters[index].filePath
                                              .toString()
                                      : 'https://image.tmdb.org/t/p/w780/' +
                                          widget.detailMovieState.result.images
                                              .posters[index].filePath
                                              .toString()),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
