library top_rated_tv_show_event;

import 'package:built_value/built_value.dart';

part 'top_rated_tv_show_event.g.dart';

abstract class TopRatedTvShowEvent {}

abstract class TopRatedTvShowEventInitiated extends TopRatedTvShowEvent
    implements
        Built<TopRatedTvShowEventInitiated,
            TopRatedTvShowEventInitiatedBuilder> {
  int get page;

  TopRatedTvShowEventInitiated._();

  factory TopRatedTvShowEventInitiated(
          [updates(TopRatedTvShowEventInitiatedBuilder b)]) =
      _$TopRatedTvShowEventInitiated;
}

abstract class TopRatedTvShowEventNextResult extends TopRatedTvShowEvent
    implements
        Built<TopRatedTvShowEventNextResult,
            TopRatedTvShowEventNextResultBuilder> {
  int get page;

  TopRatedTvShowEventNextResult._();

  factory TopRatedTvShowEventNextResult(
          [updates(TopRatedTvShowEventNextResultBuilder b)]) =
      _$TopRatedTvShowEventNextResult;
}
