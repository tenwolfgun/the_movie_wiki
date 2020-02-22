library top_rated_movies_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/movie/popular/popular.dart';

part 'top_rated_movies_state.g.dart';

abstract class TopRatedMoviesState
    implements Built<TopRatedMoviesState, TopRatedMoviesStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  TopRatedMoviesState._();

  factory TopRatedMoviesState([updates(TopRatedMoviesStateBuilder b)]) =
      _$TopRatedMoviesState;

  factory TopRatedMoviesState.initial() {
    return TopRatedMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory TopRatedMoviesState.loading() {
    return TopRatedMoviesState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory TopRatedMoviesState.error(String error) {
    return TopRatedMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error
      ..endOfResult = false);
  }

  factory TopRatedMoviesState.success(BuiltList<Result> resultList) {
    return TopRatedMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
