import 'package:flutter/material.dart';

import '../../../../../../core/widget/build_cast.dart';
import '../../../../../../core/widget/build_overview.dart';
import '../../../../../../core/widget/build_review.dart';
import '../../../../../../core/widget/build_trailer.dart';
import '../bloc/detail_tv_show_bloc.dart';
import '../pages/detail_tv_show_page.dart';
import 'build_episode_to_air.dart';
import 'build_similar_tv_show.dart';
import 'build_tv_show_info.dart';

class DetailTvShowBodyWidget extends StatelessWidget {
  const DetailTvShowBodyWidget({
    Key key,
    this.state,
    this.widget,
  }) : super(key: key);

  final Loaded state;
  final DetailTvShowPage widget;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0, bottom: 16),
      children: <Widget>[
        widget.overview != ""
            ? BuildOverview(
                overview: widget.overview,
              )
            : const SizedBox(),
        BuildTvShowInfo(
          state: state,
          firstAirDate: widget.firstAirDate,
        ),
        state.detailTvShow.credits.cast.isEmpty
            ? const SizedBox()
            : BuildCast(
                cast: state.detailTvShow.credits.cast,
              ),
        BuildReview(
          reviews: state.detailTvShow.reviews.results,
          title: widget.name,
        ),
        state.detailTvShow.videos.results.isEmpty
            ? const SizedBox()
            : BuildTrailer(
                videos: state.detailTvShow.videos.results,
              ),
        BuildEpisodeToAir(
          lastEpisodeToAir: state.detailTvShow.lastEpisodeToAir,
          nextEpisodeToAir: state.detailTvShow.nextEpisodeToAir,
        ),
        state.detailTvShow.similar.results.isEmpty
            ? const SizedBox()
            : BuildSimilarTvShow(
                similar: state.detailTvShow.similar.results,
              )
      ],
    );
  }
}
