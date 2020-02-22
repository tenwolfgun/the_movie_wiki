import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:story_view/story_controller.dart';
import 'package:story_view/story_view.dart';

class ViewAllBackdrop extends StatefulWidget {
  final DetailMovieState detailMovieState;
  final DetailTvShowState detailTvShowState;

  ViewAllBackdrop({
    Key key,
    this.detailMovieState,
    this.detailTvShowState,
  }) : super(key: key);

  @override
  _ViewAllBackdropState createState() => _ViewAllBackdropState();
}

class _ViewAllBackdropState extends State<ViewAllBackdrop> {
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
    return widget.detailMovieState == null
        ? widget.detailTvShowState.result.images.backdrops.map((i) {
            return StoryItem.pageImage(NetworkImageWithRetry(
                'https://image.tmdb.org/t/p/w780/' + i.filePath.toString()));
          }).toList()
        : widget.detailMovieState.result.images.backdrops.map((i) {
            return StoryItem.pageImage(NetworkImageWithRetry(
                'https://image.tmdb.org/t/p/w780/' + i.filePath.toString()));
          }).toList();
  }
}
