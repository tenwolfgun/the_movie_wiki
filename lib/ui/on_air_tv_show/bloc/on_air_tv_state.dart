library on_air_tv_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'on_air_tv_state.g.dart';

abstract class OnAirTvState
    implements Built<OnAirTvState, OnAirTvStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  OnAirTvState._();

  factory OnAirTvState([updates(OnAirTvStateBuilder b)]) = _$OnAirTvState;

  factory OnAirTvState.initial() {
    return OnAirTvState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory OnAirTvState.loading() {
    return OnAirTvState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory OnAirTvState.error(String error) {
    return OnAirTvState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory OnAirTvState.success(BuiltList<TvShowResult> resultList) {
    return OnAirTvState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
