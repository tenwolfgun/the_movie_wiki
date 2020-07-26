import 'package:flutter/material.dart';

import '../../../../../../core/widget/loading_state.dart';
import '../../../../../../core/widget/retry_button.dart';
import '../bloc/discover_movie_bloc.dart';
import 'movie_item.dart';

class MovieLoadedState extends StatelessWidget {
  final ScrollController scrollController;
  final Loaded state;
  final VoidCallback _onPressed;

  const MovieLoadedState({
    Key key,
    this.scrollController,
    this.state,
    VoidCallback onPressed,
  })  : _onPressed = onPressed,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 8, bottom: 32),
        shrinkWrap: true,
        controller: scrollController,
        itemCount: state.isEndOfResult
            ? state.results.length
            : state.results.length + 1,
        itemBuilder: (_, i) {
          return i >= state.results.length
              ? state.isError
                  ? RetryButton(onPressed: _onPressed)
                  : state.isLoading
                      ? const LoadingState()
                      : const LoadingState()
              : MovieItem(
                  title: state.results[i].title,
                  overview: state.results[i].overview,
                  posterPath: state.results[i].posterPath,
                  voteCount: state.results[i].voteCount,
                  voteAverage: state.results[i].voteAverage,
                  releaseDate: state.results[i].releaseDate,
                );
        },
      ),
    );
  }
}
