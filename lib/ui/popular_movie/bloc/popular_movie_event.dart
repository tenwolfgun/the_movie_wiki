library popular_movie_event;

import 'package:built_value/built_value.dart';

part 'popular_movie_event.g.dart';

abstract class PopularMovieEvent {}

abstract class PopularMovieInitiated extends PopularMovieEvent
    implements Built<PopularMovieInitiated, PopularMovieInitiatedBuilder> {
  int get page;

  PopularMovieInitiated._();

  factory PopularMovieInitiated([updates(PopularMovieInitiatedBuilder b)]) =
      _$PopularMovieInitiated;
}

abstract class PopularMovieNextResult extends PopularMovieEvent
    implements Built<PopularMovieNextResult, PopularMovieNextResultBuilder> {
  int get page;

  PopularMovieNextResult._();

  factory PopularMovieNextResult([updates(PopularMovieNextResultBuilder b)]) =
      _$PopularMovieNextResult;
}
