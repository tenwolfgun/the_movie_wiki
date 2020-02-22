library genre_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:the_movie_wiki/data/model/genre/genre.dart';

part 'genre_state.g.dart';

abstract class GenreState implements Built<GenreState, GenreStateBuilder> {
  bool get isLoading;
  BuiltList<Genre> get getResults;
  String get error;

  bool get isInitial => !isLoading && getResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && getResults.isNotEmpty && error == '';

  GenreState._();

  factory GenreState([updates(GenreStateBuilder b)]) = _$GenreState;

  factory GenreState.initial() {
    return GenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Genre>())
      ..error = '');
  }

  factory GenreState.loading() {
    return GenreState((b) => b
      ..isLoading = true
      ..getResults.replace(BuiltList<Genre>())
      ..error = '');
  }

  factory GenreState.error(String error) {
    return GenreState((b) => b
      ..isLoading = false
      ..getResults.replace(BuiltList<Genre>())
      ..error = error);
  }

  factory GenreState.success(BuiltList resultList) {
    return GenreState((b) => b
      ..isLoading = false
      ..getResults.replace(resultList)
      ..error = '');
  }
}
