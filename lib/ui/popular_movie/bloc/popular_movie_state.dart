library popular_movie_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';

part 'popular_movie_state.g.dart';

abstract class PopularMovieState
    implements Built<PopularMovieState, PopularMovieStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  PopularMovieState._();

  factory PopularMovieState([updates(PopularMovieStateBuilder b)]) =
      _$PopularMovieState;

  factory PopularMovieState.initial() {
    return PopularMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularMovieState.loading() {
    return PopularMovieState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularMovieState.error(String error) {
    return PopularMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error
      ..endOfResult = false);
  }

  factory PopularMovieState.success(BuiltList<Result> resultList) {
    return PopularMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
