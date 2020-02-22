library search_movies_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';

part 'search_movies_state.g.dart';

abstract class SearchMoviesState
    implements Built<SearchMoviesState, SearchMoviesStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  SearchMoviesState._();

  factory SearchMoviesState([updates(SearchMoviesStateBuilder b)]) =
      _$SearchMoviesState;

  factory SearchMoviesState.initial() {
    return SearchMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory SearchMoviesState.loading() {
    return SearchMoviesState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory SearchMoviesState.error(String error) {
    return SearchMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error
      ..endOfResult = false);
  }

  factory SearchMoviesState.success(BuiltList<Result> resultList) {
    return SearchMoviesState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
