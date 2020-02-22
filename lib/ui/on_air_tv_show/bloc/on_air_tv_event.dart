library on_air_tv_event;

import 'package:built_value/built_value.dart';

part 'on_air_tv_event.g.dart';

abstract class OnAirTvEvent {}

abstract class OnAirTvEventInitiated extends OnAirTvEvent
    implements Built<OnAirTvEventInitiated, OnAirTvEventInitiatedBuilder> {
  int get page;

  OnAirTvEventInitiated._();

  factory OnAirTvEventInitiated([updates(OnAirTvEventInitiatedBuilder b)]) =
      _$OnAirTvEventInitiated;
}

abstract class OnAirTvEventNextResult extends OnAirTvEvent
    implements Built<OnAirTvEventNextResult, OnAirTvEventNextResultBuilder> {
  int get page;

  OnAirTvEventNextResult._();

  factory OnAirTvEventNextResult([updates(OnAirTvEventNextResultBuilder b)]) =
      _$OnAirTvEventNextResult;
}
