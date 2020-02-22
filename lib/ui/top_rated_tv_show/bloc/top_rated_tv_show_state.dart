library top_rated_tv_show_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'top_rated_tv_show_state.g.dart';

abstract class TopRatedTvShowState
    implements Built<TopRatedTvShowState, TopRatedTvShowStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  TopRatedTvShowState._();

  factory TopRatedTvShowState([updates(TopRatedTvShowStateBuilder b)]) =
      _$TopRatedTvShowState;

  factory TopRatedTvShowState.initial() {
    return TopRatedTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory TopRatedTvShowState.loading() {
    return TopRatedTvShowState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory TopRatedTvShowState.error(String error) {
    return TopRatedTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory TopRatedTvShowState.success(BuiltList<TvShowResult> resultList) {
    return TopRatedTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
