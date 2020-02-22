import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:story_view/story_view.dart';

class ViewAllPoster extends StatefulWidget {
  final DetailMovieState state;
  final DetailTvShowState tvShowState;

  ViewAllPoster({
    Key key,
    this.state,
    this.tvShowState,
  }) : super(key: key);

  @override
  _ViewAllPosterState createState() => _ViewAllPosterState();
}

class _ViewAllPosterState extends State<ViewAllPoster> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        _buildStoryItem(),
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          Navigator.pop(context);
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }

  List<StoryItem> _buildStoryItem() {
    return widget.state == null
        ? widget.tvShowState.result.images.posters.map((i) {
            return StoryItem.pageImage(NetworkImageWithRetry(
                'https://image.tmdb.org/t/p/w780/' + i.filePath.toString()));
          }).toList()
        : widget.state.result.images.posters.map((i) {
            return StoryItem.pageImage(NetworkImageWithRetry(
                'https://image.tmdb.org/t/p/w780/' + i.filePath.toString()));
          }).toList();
  }
}
