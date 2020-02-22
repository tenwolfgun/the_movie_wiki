library airing_today_tv_show_event;

import 'package:built_value/built_value.dart';

part 'airing_today_tv_show_event.g.dart';

abstract class AiringTodayTvShowEvent {}

abstract class AiringTodayTvShowEventInitiated extends AiringTodayTvShowEvent
    implements
        Built<AiringTodayTvShowEventInitiated,
            AiringTodayTvShowEventInitiatedBuilder> {
  int get page;

  AiringTodayTvShowEventInitiated._();

  factory AiringTodayTvShowEventInitiated(
          [updates(AiringTodayTvShowEventInitiatedBuilder b)]) =
      _$AiringTodayTvShowEventInitiated;
}

abstract class AiringTodayTvShowEventNextResult extends AiringTodayTvShowEvent
    implements
        Built<AiringTodayTvShowEventNextResult,
            AiringTodayTvShowEventNextResultBuilder> {
  int get page;

  AiringTodayTvShowEventNextResult._();

  factory AiringTodayTvShowEventNextResult(
          [updates(AiringTodayTvShowEventNextResultBuilder b)]) =
      _$AiringTodayTvShowEventNextResult;
}
