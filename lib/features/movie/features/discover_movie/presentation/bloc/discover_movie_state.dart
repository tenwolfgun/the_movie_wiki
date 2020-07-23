part of 'discover_movie_bloc.dart';
// @immutable
// abstract class DiscoverMovieState {}
// class DiscoverMovieInitial extends DiscoverMovieState {}

@freezed
abstract class DiscoverMovieState with _$DiscoverMovieState {
  const factory DiscoverMovieState.initial() = Initial;
}
