library top_rated_movies_event;

import 'package:built_value/built_value.dart';

part 'top_rated_movies_event.g.dart';

abstract class TopRatedMoviesEvent {}

abstract class TopRatedMoviesInitiated extends TopRatedMoviesEvent
    implements Built<TopRatedMoviesInitiated, TopRatedMoviesInitiatedBuilder> {
  int get page;

  TopRatedMoviesInitiated._();

  factory TopRatedMoviesInitiated([updates(TopRatedMoviesInitiatedBuilder b)]) =
      _$TopRatedMoviesInitiated;
}

abstract class TopRatedMoviesNextResult extends TopRatedMoviesEvent
    implements
        Built<TopRatedMoviesNextResult, TopRatedMoviesNextResultBuilder> {
  int get page;

  TopRatedMoviesNextResult._();

  factory TopRatedMoviesNextResult(
          [updates(TopRatedMoviesNextResultBuilder b)]) =
      _$TopRatedMoviesNextResult;
}
