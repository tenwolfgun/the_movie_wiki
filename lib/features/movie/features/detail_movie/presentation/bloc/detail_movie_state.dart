part of 'detail_movie_bloc.dart';

@freezed
abstract class DetailMovieState with _$DetailMovieState {
  const factory DetailMovieState.initial() = Initial;
  const factory DetailMovieState.loading() = Loading;
  const factory DetailMovieState.loaded({@required DetailMovie detailMovie}) =
      Loaded;
  factory DetailMovieState.error(String errorMessage) = Error;
}
