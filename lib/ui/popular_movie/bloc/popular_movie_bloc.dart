import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/popular_movie/bloc/popular_movie_event.dart';
import 'package:the_movie_wiki/ui/popular_movie/bloc/popular_movie_state.dart';
import 'package:the_movie_wiki/data/model/movie/popular/popular.dart';

class PopularMovieBloc extends Bloc<PopularMovieEvent, PopularMovieState> {
  final MovieRepository _movieRepository;

  PopularMovieBloc(this._movieRepository) : super();

  void onPopularMovieInitiated(int page) {
    add(PopularMovieInitiated((b) => b..page = page));
  }

  void onPopularMovieNextResult(int page) {
    add(PopularMovieNextResult((b) => b..page = page));
  }

  @override
  PopularMovieState get initialState => PopularMovieState.initial();

  @override
  Stream<PopularMovieState> mapEventToState(
    PopularMovieEvent event,
  ) async* {
    if (event is PopularMovieInitiated) {
      yield* mapPopularInitiated(event);
    } else if (event is PopularMovieNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<PopularMovieState> mapPopularInitiated(
      PopularMovieInitiated event) async* {
    yield PopularMovieState.loading();
    try {
      final _popularMovieResult =
          await _movieRepository.popularMovies(event.page);
      yield PopularMovieState.success(_popularMovieResult);
    } on ResultError catch (e) {
      yield PopularMovieState.error(e.message);
    } on NoResultException catch (_) {
      yield PopularMovieState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield PopularMovieState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<PopularMovieState> mapNextResult(PopularMovieNextResult event) async* {
    try {
      final _popularMovieResult =
          await _movieRepository.popularMovies(event.page);
      yield PopularMovieState.success(state.getResults + _popularMovieResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield PopularMovieState.error(e.message);
    }
  }
}
