library airing_today_tv_show_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'airing_today_tv_show_state.g.dart';

abstract class AiringTodayTvShowState
    implements Built<AiringTodayTvShowState, AiringTodayTvShowStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  AiringTodayTvShowState._();

  factory AiringTodayTvShowState([updates(AiringTodayTvShowStateBuilder b)]) =
      _$AiringTodayTvShowState;

  factory AiringTodayTvShowState.initial() {
    return AiringTodayTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory AiringTodayTvShowState.loading() {
    return AiringTodayTvShowState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory AiringTodayTvShowState.error(String error) {
    return AiringTodayTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory AiringTodayTvShowState.success(BuiltList<TvShowResult> resultList) {
    return AiringTodayTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
