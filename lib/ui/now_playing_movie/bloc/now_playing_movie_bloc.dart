import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/now_playing_movie/bloc/now_playing_movie_event.dart';
import 'package:the_movie_wiki/ui/now_playing_movie/bloc/now_playing_movie_state.dart';

class NowPlayingMovieBloc
    extends Bloc<NowPlayingMovieEvent, NowPlayingMovieState> {
  final MovieRepository _movieRepository;

  NowPlayingMovieBloc(this._movieRepository);

  void onNowPlayingMovieInitiated(int page) {
    add(NowPlayingMovieInitiated((b) => b..page = page));
  }

  void onNowPlayingNextResult(int page) {
    add(NowPlayingMovieNextResult((b) => b..page = page));
  }

  @override
  NowPlayingMovieState get initialState => NowPlayingMovieState.initial();

  @override
  Stream<NowPlayingMovieState> mapEventToState(
    NowPlayingMovieEvent event,
  ) async* {
    if (event is NowPlayingMovieInitiated) {
      yield* mapNowPlayingInitiated(event);
    } else if (event is NowPlayingMovieNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<NowPlayingMovieState> mapNowPlayingInitiated(
      NowPlayingMovieInitiated event) async* {
    yield NowPlayingMovieState.loading();
    try {
      final _nowPlayingMovieResult =
          await _movieRepository.nowPlayingMovies(event.page);
      yield NowPlayingMovieState.success(_nowPlayingMovieResult);
    } on ResultError catch (e) {
      yield NowPlayingMovieState.error(e.message);
    } on NoResultException catch (_) {
      yield NowPlayingMovieState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield NowPlayingMovieState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<NowPlayingMovieState> mapNextResult(
      NowPlayingMovieNextResult event) async* {
    try {
      final _nowPlayingMovieResult =
          await _movieRepository.nowPlayingMovies(event.page);
      yield NowPlayingMovieState.success(
          state.getResults + _nowPlayingMovieResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield NowPlayingMovieState.error(e.message);
    }
  }
}
