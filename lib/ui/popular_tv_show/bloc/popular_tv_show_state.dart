library popular_tv_show_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'popular_tv_show_state.g.dart';

abstract class PopularTvShowState
    implements Built<PopularTvShowState, PopularTvShowStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  PopularTvShowState._();

  factory PopularTvShowState([updates(PopularTvShowStateBuilder b)]) =
      _$PopularTvShowState;

  factory PopularTvShowState.initial() {
    return PopularTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularTvShowState.loading() {
    return PopularTvShowState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularTvShowState.error(String error) {
    return PopularTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory PopularTvShowState.success(BuiltList<TvShowResult> resultList) {
    return PopularTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
