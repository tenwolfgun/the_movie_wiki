library search_tv_show_event;

import 'package:built_value/built_value.dart';

part 'search_tv_show_event.g.dart';

abstract class SearchTvShowEvent {}

abstract class SearchTvShowEventInitiated extends SearchTvShowEvent
    implements
        Built<SearchTvShowEventInitiated, SearchTvShowEventInitiatedBuilder> {
  String get searchQuery;
  int get page;

  SearchTvShowEventInitiated._();

  factory SearchTvShowEventInitiated(
          [updates(SearchTvShowEventInitiatedBuilder b)]) =
      _$SearchTvShowEventInitiated;
}

abstract class SearchTvShowEventNextResult extends SearchTvShowEvent
    implements
        Built<SearchTvShowEventNextResult, SearchTvShowEventNextResultBuilder> {
  String get searchQuery;
  int get page;

  SearchTvShowEventNextResult._();

  factory SearchTvShowEventNextResult(
          [updates(SearchTvShowEventNextResultBuilder b)]) =
      _$SearchTvShowEventNextResult;
}
