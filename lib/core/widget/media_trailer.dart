import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_wiki/core/widget/error_image.dart';
import 'package:the_movie_wiki/core/widget/image_loader.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaTrailer extends StatefulWidget {
  final Loaded detailMovieState;

  const MediaTrailer({
    Key key,
    this.detailMovieState,
  }) : super(key: key);

  @override
  _MediaTrailerState createState() => _MediaTrailerState();
}

class _MediaTrailerState extends State<MediaTrailer> {
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
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 8),
                  //   child: Text(
                  //     widget
                  //         .detailMovieState.detailMovie.videos.results[i].name,
                  //     maxLines: 1,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyle(
                  //       fontSize: 40.sp,
                  //       height: 1.5,
                  //       color: Colors.white54,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _launchUrl(String id) async {
    final url = 'http://www.youtube.com/watch?v=' + id;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
