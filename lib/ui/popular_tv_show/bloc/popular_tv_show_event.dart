library popular_tv_show_event;

import 'package:built_value/built_value.dart';

part 'popular_tv_show_event.g.dart';

abstract class PopularTVShowEvent {}

abstract class PopularTvShowInitiated extends PopularTVShowEvent
    implements Built<PopularTvShowInitiated, PopularTvShowInitiatedBuilder> {
  int get page;

  PopularTvShowInitiated._();

  factory PopularTvShowInitiated([updates(PopularTvShowInitiatedBuilder b)]) =
      _$PopularTvShowInitiated;
}

abstract class PopularTvShowNextResult extends PopularTVShowEvent
    implements Built<PopularTvShowNextResult, PopularTvShowNextResultBuilder> {
  int get page;

  PopularTvShowNextResult._();

  factory PopularTvShowNextResult([updates(PopularTvShowNextResultBuilder b)]) =
      _$PopularTvShowNextResult;
}
