import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/routes/router.gr.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../../../../../../core/widget/retry_button.dart';
import '../bloc/discover_tv_show_bloc.dart';
import 'tv_show_item.dart';

class TvShowLoadedState extends StatelessWidget {
  const TvShowLoadedState({
    Key key,
    this.scrollController,
    this.state,
    VoidCallback onPressed,
  })  : _onPressed = onPressed,
        super(key: key);

  final ScrollController scrollController;
  final Loaded state;

  final VoidCallback _onPressed;

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
                  onTap: () {
                    ExtendedNavigator.of(context).push(
                      Routes.detailTvShowPage,
                      arguments: DetailTvShowPageArguments(
                        id: state.results[i].id,
                        name: state.results[i].name,
                        posterPath: state.results[i].posterPath,
                        rating: state.results[i].voteAverage,
                        overview: state.results[i].overview ?? '',
                        firstAirDate: state.results[i].firstAirDate,
                      ),
                    );
                  },
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
