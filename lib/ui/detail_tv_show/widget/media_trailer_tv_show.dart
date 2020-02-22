import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaTrailerTvSHow extends StatefulWidget {
  final DetailTvShowState state;

  MediaTrailerTvSHow({
    Key key,
    @required this.state,
  }) : super(key: key);

  @override
  _MediaTrailerTvSHowState createState() => _MediaTrailerTvSHowState();
}

class _MediaTrailerTvSHowState extends State<MediaTrailerTvSHow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 16),
      height: 150,
      // width: 300,
      child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.state.result.videos.results.length,
        // separatorBuilder: (context, _) => SizedBox(
        //   width: 10,
        // ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 175,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Image(
                              image: NetworkImageWithRetry(
                                  'http://i3.ytimg.com/vi/' +
                                      widget.state.result.videos.results[index]
                                          .key +
                                      '/hqdefault.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned.fill(
                            child: InkWell(
                              onTap: () {
                                _launchUrl(
                                  widget.state.result.videos.results[index].key
                                      .toString(),
                                );
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
                      widget.state.result.videos.results[index].name,
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
