import 'package:flutter/material.dart';
import 'package:the_movie_wiki/core/widget/loading_state.dart';
import 'package:the_movie_wiki/core/widget/retry_button.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/presentation/bloc/discover_tv_show_bloc.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/presentation/widgets/tv_show_item.dart';

class TvShowLoadedState extends StatelessWidget {
  final ScrollController scrollController;
  final Loaded state;
  final VoidCallback _onPressed;

  const TvShowLoadedState({
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
        padding: const EdgeInsets.only(top: 8, bottom: 16),
        shrinkWrap: true,
        controller: scrollController,
        itemCount: state.isEndOfResult
            ? state.results.length
            : state.results.length + 1,
        itemBuilder: (_, i) {
          return i >= state.results.length
              ? state.isError
                  ? RetryButton(
                      onPressed: _onPressed,
                    )
                  : state.isLoading
                      ? const LoadingState()
                      : const LoadingState()
              : InkWell(
                  onTap: () {},
                  child: TVShowItem(
                    name: state.results[i].name,
                    overview: state.results[i].overview,
                    posterPath: state.results[i].posterPath,
                    voteCount: state.results[i].voteCount,
                    voteAverage: state.results[i].voteAverage,
                    firstAirDate: state.results[i].firstAirDate,
                  ),
                );
        },
      ),
    );
  }
}
