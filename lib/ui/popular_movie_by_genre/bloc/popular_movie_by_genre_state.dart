library popular_movie_by_genre_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';

part 'popular_movie_by_genre_state.g.dart';

abstract class PopularMovieByGenreState
    implements
        Built<PopularMovieByGenreState, PopularMovieByGenreStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  PopularMovieByGenreState._();

  factory PopularMovieByGenreState(
          [updates(PopularMovieByGenreStateBuilder b)]) =
      _$PopularMovieByGenreState;

  factory PopularMovieByGenreState.initial() {
    return PopularMovieByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularMovieByGenreState.loading() {
    return PopularMovieByGenreState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularMovieByGenreState.error(String error) {
    return PopularMovieByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error
      ..endOfResult = false);
  }

  factory PopularMovieByGenreState.success(BuiltList<Result> resultList) {
    return PopularMovieByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
