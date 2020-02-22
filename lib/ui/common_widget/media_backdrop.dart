import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

const String testDevice = 'Test_Device_ID';

class MediaBackdrop extends StatefulWidget {
  final DetailMovieState detailMovieState;
  final DetailTvShowState detailTvShowState;

  MediaBackdrop({
    Key key,
    this.detailMovieState,
    this.detailTvShowState,
  }) : super(key: key);

  @override
  _MediaBackdropState createState() => _MediaBackdropState();
}

class _MediaBackdropState extends State<MediaBackdrop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 16),
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.detailMovieState == null
            ? widget.detailTvShowState.result.images.backdrops.take(5).length
            : widget.detailMovieState.result.images.backdrops.take(5).length,
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
                                              .backdrops[index].filePath
                                              .toString()
                                      : 'https://image.tmdb.org/t/p/w780/' +
                                          widget.detailMovieState.result.images
                                              .backdrops[index].filePath
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
