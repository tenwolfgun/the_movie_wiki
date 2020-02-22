library popular_tv_show_by_genre_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';

part 'popular_tv_show_by_genre_state.g.dart';

abstract class PopularTvShowByGenreState
    implements
        Built<PopularTvShowByGenreState, PopularTvShowByGenreStateBuilder> {
  bool get isLoading;
  BuiltList<TvShowResult> get getResults;
  String get error;
  bool get endOfResult;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  PopularTvShowByGenreState._();

  factory PopularTvShowByGenreState(
          [updates(PopularTvShowByGenreStateBuilder b)]) =
      _$PopularTvShowByGenreState;

  factory PopularTvShowByGenreState.initial() {
    return PopularTvShowByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularTvShowByGenreState.loading() {
    return PopularTvShowByGenreState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = ''
      ..endOfResult = false);
  }

  factory PopularTvShowByGenreState.error(String error) {
    return PopularTvShowByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<TvShowResult>())
      ..error = error
      ..endOfResult = false);
  }

  factory PopularTvShowByGenreState.success(
      BuiltList<TvShowResult> resultList) {
    return PopularTvShowByGenreState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = ''
      ..endOfResult = false);
  }
}
