library search_tv_show_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'search_tv_show_state.g.dart';

abstract class SearchTvShowState
    implements Built<SearchTvShowState, SearchTvShowStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  SearchTvShowState._();

  factory SearchTvShowState([updates(SearchTvShowStateBuilder b)]) =
      _$SearchTvShowState;

  factory SearchTvShowState.initial() {
    return SearchTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory SearchTvShowState.loading() {
    return SearchTvShowState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory SearchTvShowState.error(String error) {
    return SearchTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory SearchTvShowState.success(BuiltList<TvShowResult> resultList) {
    return SearchTvShowState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
