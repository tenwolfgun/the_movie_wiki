library popular_tv_show_by_genre_event;

import 'package:built_value/built_value.dart';

part 'popular_tv_show_by_genre_event.g.dart';

abstract class PopularTvShowByGenreEvent {}

abstract class PopularTvShowByGenreEventInitiated
    extends PopularTvShowByGenreEvent
    implements
        Built<PopularTvShowByGenreEventInitiated,
            PopularTvShowByGenreEventInitiatedBuilder> {
  String get genreId;
  int get page;

  PopularTvShowByGenreEventInitiated._();

  factory PopularTvShowByGenreEventInitiated(
          [updates(PopularTvShowByGenreEventInitiatedBuilder b)]) =
      _$PopularTvShowByGenreEventInitiated;
}

abstract class PopularTvShowByGenreEventNextResult
    extends PopularTvShowByGenreEvent
    implements
        Built<PopularTvShowByGenreEventNextResult,
            PopularTvShowByGenreEventNextResultBuilder> {
  String get genreId;
  int get page;

  PopularTvShowByGenreEventNextResult._();

  factory PopularTvShowByGenreEventNextResult(
          [updates(PopularTvShowByGenreEventNextResultBuilder b)]) =
      _$PopularTvShowByGenreEventNextResult;
}
