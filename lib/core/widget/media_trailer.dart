import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';
import 'error_image.dart';
import 'image_loader.dart';

class MediaTrailer extends StatefulWidget {
  const MediaTrailer({
    Key key,
    this.detailMovieState,
  }) : super(key: key);

  final Loaded detailMovieState;

  @override
  _MediaTrailerState createState() => _MediaTrailerState();
}

class _MediaTrailerState extends State<MediaTrailer> {
  _launchUrl(String id) async {
    final url = 'http://www.youtube.com/watch?v=' + id;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 16),
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.detailMovieState.detailMovie.videos.results.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 175,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CachedNetworkImage(
                              imageUrl: 'http://i3.ytimg.com/vi/' +
                                  widget.detailMovieState.detailMovie.videos
                                      .results[i].key +
                                  '/hqdefault.jpg',
                              fit: BoxFit.fill,
                              placeholder: (_, __) => const ImageLoader(),
                              errorWidget: (_, __, ___) => const ErrorImage(),
                            ),
                          ),
                          Positioned.fill(
                            child: InkWell(
                              onTap: () {
                                _launchUrl(
                                  widget.detailMovieState.detailMovie.videos
                                      .results[i].key
                                      .toString(),
                                );
                              },
                              child: Center(
                                child: Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.white70,
                                  size: 30,
                                ),
                              ),
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
