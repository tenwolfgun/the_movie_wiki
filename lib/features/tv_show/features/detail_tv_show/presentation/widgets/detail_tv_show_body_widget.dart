import 'package:flutter/material.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/presentation/widgets/build_episode_to_air.dart';

import '../../../../../../core/widget/build_cast.dart';
import '../../../../../../core/widget/build_overview.dart';
import '../../../../../../core/widget/build_review.dart';
import '../../../../../../core/widget/build_trailer.dart';
import '../bloc/detail_tv_show_bloc.dart';
import '../pages/detail_tv_show_page.dart';
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
        BuildOverview(
          overview: widget.overview,
        ),
        BuildTvShowInfo(
          state: state,
          firstAirDate: widget.firstAirDate,
        ),
        BuildCast(
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
      ],
    );
  }
}
