library now_playing_movie_event;

import 'package:built_value/built_value.dart';

part 'now_playing_movie_event.g.dart';

abstract class NowPlayingMovieEvent {}

abstract class NowPlayingMovieInitiated extends NowPlayingMovieEvent
    implements
        Built<NowPlayingMovieInitiated, NowPlayingMovieInitiatedBuilder> {
  int get page;

  NowPlayingMovieInitiated._();

  factory NowPlayingMovieInitiated(
          [updates(NowPlayingMovieInitiatedBuilder b)]) =
      _$NowPlayingMovieInitiated;
}

abstract class NowPlayingMovieNextResult extends NowPlayingMovieEvent
    implements
        Built<NowPlayingMovieNextResult, NowPlayingMovieNextResultBuilder> {
  int get page;

  NowPlayingMovieNextResult._();

  factory NowPlayingMovieNextResult(
          [updates(NowPlayingMovieNextResultBuilder b)]) =
      _$NowPlayingMovieNextResult;
}
