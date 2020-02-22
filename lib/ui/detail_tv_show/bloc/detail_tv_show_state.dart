library detail_tv_show_state;

import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/detail_tv_result.dart';

part 'detail_tv_show_state.g.dart';

abstract class DetailTvShowState
    implements Built<DetailTvShowState, DetailTvShowStateBuilder> {
  bool get isLoading;
  @nullable
  DetailTvResult get result;
  String get error;
  @nullable
  int get isFavorite;

  bool get isInitial => !isLoading && result == null && error == '';
  bool get isSuccessful => !isLoading && result != null && error == '';

  DetailTvShowState._();

  factory DetailTvShowState([updates(DetailTvShowStateBuilder b)]) =
      _$DetailTvShowState;

  factory DetailTvShowState.initial() {
    return DetailTvShowState((b) => b
      ..isLoading = false
      ..result = null
      ..error = '');
  }

  factory DetailTvShowState.loading() {
    return DetailTvShowState((b) => b
      ..isLoading = true
      ..result = null
      ..error = '');
  }

  factory DetailTvShowState.error(String error) {
    return DetailTvShowState((b) => b
      ..isLoading = false
      ..result = null
      ..error = error);
  }

  factory DetailTvShowState.success(DetailTvResult result, int isFavorite) {
    return DetailTvShowState((b) => b
      ..isLoading = false
      ..result.replace(result)
      ..isFavorite = isFavorite
      ..error = '');
  }
}
