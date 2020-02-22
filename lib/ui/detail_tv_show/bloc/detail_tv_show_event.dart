library detail_tv_show_event;

import 'package:built_value/built_value.dart';

part 'detail_tv_show_event.g.dart';

abstract class DetailTvShowEvent {}

abstract class DetailTvShowEventInitiated extends DetailTvShowEvent
    implements
        Built<DetailTvShowEventInitiated, DetailTvShowEventInitiatedBuilder> {
  int get id;

  DetailTvShowEventInitiated._();

  factory DetailTvShowEventInitiated(
          [updates(DetailTvShowEventInitiatedBuilder b)]) =
      _$DetailTvShowEventInitiated;
}

abstract class DetailTvShowEventAddFavorite extends DetailTvShowEvent
    implements
        Built<DetailTvShowEventAddFavorite,
            DetailTvShowEventAddFavoriteBuilder> {
  int get tvShowId;
  String get name;
  String get posterPath;
  double get voteAverage;

  DetailTvShowEventAddFavorite._();

  factory DetailTvShowEventAddFavorite(
          [updates(DetailTvShowEventAddFavoriteBuilder b)]) =
      _$DetailTvShowEventAddFavorite;
}

abstract class DetailTvShowEventRemoveFavorite extends DetailTvShowEvent
    implements
        Built<DetailTvShowEventRemoveFavorite,
            DetailTvShowEventRemoveFavoriteBuilder> {
  int get tvShowId;

  DetailTvShowEventRemoveFavorite._();

  factory DetailTvShowEventRemoveFavorite(
          [updates(DetailTvShowEventRemoveFavoriteBuilder b)]) =
      _$DetailTvShowEventRemoveFavorite;
}
