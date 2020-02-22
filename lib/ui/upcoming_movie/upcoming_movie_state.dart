library upcoming_movie_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';

part 'upcoming_movie_state.g.dart';

abstract class UpcomingMovieState
    implements Built<UpcomingMovieState, UpcomingMovieStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  UpcomingMovieState._();

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  factory UpcomingMovieState([updates(UpcomingMovieStateBuilder b)]) =
      _$UpcomingMovieState;

  factory UpcomingMovieState.initial() {
    return UpcomingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = '');
  }

  factory UpcomingMovieState.loading() {
    return UpcomingMovieState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = '');
  }

  factory UpcomingMovieState.error(String error) {
    return UpcomingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error);
  }

  factory UpcomingMovieState.success(BuiltList<Result> resultList) {
    return UpcomingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = '');
  }
}
