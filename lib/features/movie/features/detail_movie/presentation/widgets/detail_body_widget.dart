import 'package:flutter/material.dart';

import '../../../../../../core/widget/build_overview.dart';
import '../bloc/detail_movie_bloc.dart';
import '../pages/test_detail_movie.dart';
import 'build_cast.dart';
import 'build_info.dart';
import 'build_review.dart';
import 'build_similar.dart';
import 'build_trailer.dart';

class DetailMovieBodyWidget extends StatelessWidget {
  const DetailMovieBodyWidget({
    Key key,
    @required this.widget,
    this.state,
  }) : super(key: key);

  final Loaded state;
  final TestDetailMovie widget;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0, bottom: 16),
      children: <Widget>[
        BuildOverview(
          overview: widget.overview,
        ),
        BuildInfo(
          state: state,
          releaseDate: widget.releaseDate,
        ),
        BuildCast(
          cast: state.detailMovie.credits.cast,
        ),
        BuildReview(
          reviews: state.detailMovie.reviews.results,
          title: widget.title,
        ),
        BuildTrailer(
          videos: state.detailMovie.videos.results,
        ),
        BuildSimilar(
          similar: state.detailMovie.similar.results,
        )
      ],
    );
  }
}
