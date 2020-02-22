library search_movies_event;

import 'package:built_value/built_value.dart';

part 'search_movies_event.g.dart';

abstract class SearchMoviesEvent {}

abstract class SearchMoviesEventInitiated extends SearchMoviesEvent
    implements
        Built<SearchMoviesEventInitiated, SearchMoviesEventInitiatedBuilder> {
  String get searchQuery;
  int get page;

  SearchMoviesEventInitiated._();

  factory SearchMoviesEventInitiated(
          [updates(SearchMoviesEventInitiatedBuilder b)]) =
      _$SearchMoviesEventInitiated;
}

abstract class SearchMoviesEventNextResult extends SearchMoviesEvent
    implements
        Built<SearchMoviesEventNextResult, SearchMoviesEventNextResultBuilder> {
  String get searchQuery;
  int get page;

  SearchMoviesEventNextResult._();

  factory SearchMoviesEventNextResult(
          [updates(SearchMoviesEventNextResultBuilder b)]) =
      _$SearchMoviesEventNextResult;
}
