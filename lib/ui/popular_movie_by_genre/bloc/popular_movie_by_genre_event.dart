library popular_movie_by_genre_event;

import 'package:built_value/built_value.dart';

part 'popular_movie_by_genre_event.g.dart';

abstract class PopularMovieByGenreEvent {}

abstract class PopularMovieByGenreEventInitiated
    extends PopularMovieByGenreEvent
    implements
        Built<PopularMovieByGenreEventInitiated,
            PopularMovieByGenreEventInitiatedBuilder> {
  String get genreId;
  int get page;

  PopularMovieByGenreEventInitiated._();

  factory PopularMovieByGenreEventInitiated(
          [updates(PopularMovieByGenreEventInitiatedBuilder b)]) =
      _$PopularMovieByGenreEventInitiated;
}

abstract class PopularMovieByGenreEventNextResult
    extends PopularMovieByGenreEvent
    implements
        Built<PopularMovieByGenreEventNextResult,
            PopularMovieByGenreEventNextResultBuilder> {
  String get genreId;
  int get page;

  PopularMovieByGenreEventNextResult._();

  factory PopularMovieByGenreEventNextResult(
          [updates(PopularMovieByGenreEventNextResultBuilder b)]) =
      _$PopularMovieByGenreEventNextResult;
}
