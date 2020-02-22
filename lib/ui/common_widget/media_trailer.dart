import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaTrailer extends StatefulWidget {
  final DetailMovieState detailMovieState;
  final DetailTvShowState detailTvShowState;

  MediaTrailer({
    Key key,
    this.detailMovieState,
    this.detailTvShowState,
  }) : super(key: key);

  @override
  _MediaTrailerState createState() => _MediaTrailerState();
}

class _MediaTrailerState extends State<MediaTrailer> {
  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>[
      'Video',
      'TikTok',
      'Games',
      'FPS',
      'Movie',
      'Moba',
      'Action',
      'RPG',
      'Music'
    ],
    childDirected: true,
    nonPersonalizedAds: true,
  );

  InterstitialAd interstitialAd;

  InterstitialAd createInterstitialAd(String id) {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-9768338049580158/8363784951',
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.closed) {
            _launchUrl(id);
          } else if (event == MobileAdEvent.failedToLoad) {
            _launchUrl(id);
          }
        });
  }

  @override
  void dispose() {
    interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 16),
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.detailMovieState == null
            ? widget.detailTvShowState.result.videos.results.length
            : widget.detailMovieState.result.videos.results.length,
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
                                      ? 'http://i3.ytimg.com/vi/' +
                                          widget.detailTvShowState.result.videos
                                              .results[index].key +
                                          '/hqdefault.jpg'
                                      : 'http://i3.ytimg.com/vi/' +
                                          widget.detailMovieState.result.videos
                                              .results[index].key +
                                          '/hqdefault.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned.fill(
                            child: InkWell(
                              onTap: () {
                                interstitialAd?.dispose();
                                interstitialAd = createInterstitialAd(
                                  widget.detailMovieState == null
                                      ? widget.detailTvShowState.result.videos
                                          .results[index].key
                                          .toString()
                                      : widget.detailMovieState.result.videos
                                          .results[index].key
                                          .toString(),
                                )
                                  ..load()
                                  ..show();
                                // rrrr(
                                //   widget.detailMovieState == null
                                //       ? widget.detailTvShowState.result.videos
                                //           .results[index].key
                                //           .toString()
                                //       : widget.detailMovieState.result.videos
                                //           .results[index].key
                                //           .toString(),
                                // );
                                // RewardedVideoAd.instance.load(
                                //   adUnitId: RewardedVideoAd.testAdUnitId,
                                //   targetingInfo: targetingInfo,
                                // );
                              },
                              child: Container(
                                child: Center(
                                  child: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.white70,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      widget.detailMovieState == null
                          ? widget.detailTvShowState.result.videos
                              .results[index].name
                          : widget.detailMovieState.result.videos.results[index]
                              .name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white54, height: 1.5),
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

  _launchUrl(String id) async {
    final url = 'http://www.youtube.com/watch?v=' + id;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
