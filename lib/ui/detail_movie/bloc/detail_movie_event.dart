library detail_movie_event;

import 'package:built_value/built_value.dart';

part 'detail_movie_event.g.dart';

abstract class DetailMovieEvent {}

abstract class DetailMovieEventInitiated extends DetailMovieEvent
    implements
        Built<DetailMovieEventInitiated, DetailMovieEventInitiatedBuilder> {
  int get id;

  DetailMovieEventInitiated._();

  factory DetailMovieEventInitiated(
          [updates(DetailMovieEventInitiatedBuilder b)]) =
      _$DetailMovieEventInitiated;
}

abstract class DetailMovieEventAddFavorite extends DetailMovieEvent
    implements
        Built<DetailMovieEventAddFavorite, DetailMovieEventAddFavoriteBuilder> {
  int get movieId;
  String get title;
  String get posterPath;
  double get voteAverage;

  DetailMovieEventAddFavorite._();

  factory DetailMovieEventAddFavorite(
          [updates(DetailMovieEventAddFavoriteBuilder b)]) =
      _$DetailMovieEventAddFavorite;
}

abstract class DetailMovieEventRemoveFavorite extends DetailMovieEvent
    implements
        Built<DetailMovieEventRemoveFavorite,
            DetailMovieEventRemoveFavoriteBuilder> {
  int get movieId;

  DetailMovieEventRemoveFavorite._();

  factory DetailMovieEventRemoveFavorite(
          [updates(DetailMovieEventRemoveFavoriteBuilder b)]) =
      _$DetailMovieEventRemoveFavorite;
}
