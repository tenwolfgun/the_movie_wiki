library now_playing_movie_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';

part 'now_playing_movie_state.g.dart';

abstract class NowPlayingMovieState
    implements Built<NowPlayingMovieState, NowPlayingMovieStateBuilder> {
  bool get isLoading;
  BuiltList<Result> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  NowPlayingMovieState._();

  factory NowPlayingMovieState([updates(NowPlayingMovieStateBuilder b)]) =
      _$NowPlayingMovieState;

  factory NowPlayingMovieState.initial() {
    return NowPlayingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory NowPlayingMovieState.loading() {
    return NowPlayingMovieState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Result>())
      ..error = ''
      ..endOfResult = false);
  }

  factory NowPlayingMovieState.error(String error) {
    return NowPlayingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Result>())
      ..error = error
      ..endOfResult = false);
  }

  factory NowPlayingMovieState.success(BuiltList<Result> resultList) {
    return NowPlayingMovieState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
