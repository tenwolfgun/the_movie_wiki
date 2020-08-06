import 'package:flutter/material.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/widgets/build_cast.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/widgets/build_info.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/widgets/build_review.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/widgets/build_similar.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/widgets/build_trailer.dart';

import '../bloc/detail_movie_bloc.dart';
import '../pages/test_detail_movie.dart';
import 'build_overview.dart';

class DetailMovieBodyWidget extends StatelessWidget {
  const DetailMovieBodyWidget({
    Key key,
    @required this.widget,
    this.state,
  }) : super(key: key);

  final TestDetailMovie widget;
  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0, bottom: 16),
      children: <Widget>[
        BuildOverview(widget: widget),
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
