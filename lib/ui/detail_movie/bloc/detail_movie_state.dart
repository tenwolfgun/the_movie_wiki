library detail_movie_state;

import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/movie/detail/detail_movie_result.dart';

part 'detail_movie_state.g.dart';

abstract class DetailMovieState
    implements Built<DetailMovieState, DetailMovieStateBuilder> {
  bool get isLoading;
  @nullable
  DetailMovieResult get result;
  String get error;
  @nullable
  int get isFavorite;

  bool get isInitial => !isLoading && result == null && error == '';
  bool get isSuccessful => !isLoading && result != null && error == '';

  DetailMovieState._();

  factory DetailMovieState([updates(DetailMovieStateBuilder b)]) =
      _$DetailMovieState;

  factory DetailMovieState.initial() {
    return DetailMovieState((b) => b
      ..isLoading = false
      ..result = null
      ..error = '');
  }

  factory DetailMovieState.loading() {
    return DetailMovieState((b) => b
      ..isLoading = true
      ..result = null
      ..error = '');
  }

  factory DetailMovieState.error(String error) {
    return DetailMovieState((b) => b
      ..isLoading = false
      ..result = null
      ..error = error);
  }

  factory DetailMovieState.success(
    DetailMovieResult result,
    int isFavorite,
  ) {
    return DetailMovieState((b) => b
      ..isLoading = false
      ..result.replace(result)
      ..isFavorite = isFavorite
      ..error = '');
  }
}
