part of 'discover_movie_bloc.dart';
// @immutable
// abstract class DiscoverMovieState {}
// class DiscoverMovieInitial extends DiscoverMovieState {}

@freezed
abstract class DiscoverMovieState with _$DiscoverMovieState {
  factory DiscoverMovieState.initial() = Initial;
  factory DiscoverMovieState.loading() = Loading;
  factory DiscoverMovieState.loaded({
    List<MovieResult> results,
    bool isEndOfResult,
    bool isLoading,
    bool isError,
    String errorMessage,
    bool isLoadData,
  }) = Loaded;
  factory DiscoverMovieState.error(String errorMessage) = Error;
}
