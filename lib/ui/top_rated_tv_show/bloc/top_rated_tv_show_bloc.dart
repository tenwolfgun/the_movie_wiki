import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/top_rated_tv_show/bloc/top_rated_tv_show_event.dart';
import 'package:the_movie_wiki/ui/top_rated_tv_show/bloc/top_rated_tv_show_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class TopRatedTvShowBloc
    extends Bloc<TopRatedTvShowEvent, TopRatedTvShowState> {
  final MovieRepository _movieRepository;

  TopRatedTvShowBloc(this._movieRepository);

  void onTopRatedTvShowInitiated(int page) {
    add(TopRatedTvShowEventInitiated((b) => b..page = page));
  }

  void onTopRatedTvNextResult(int page) {
    add(TopRatedTvShowEventNextResult((b) => b..page = page));
  }

  @override
  TopRatedTvShowState get initialState => TopRatedTvShowState.initial();

  @override
  Stream<TopRatedTvShowState> mapEventToState(
    TopRatedTvShowEvent event,
  ) async* {
    if (event is TopRatedTvShowEventInitiated) {
      yield* mapTopRatedInitiated(event);
    } else if (event is TopRatedTvShowEventNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<TopRatedTvShowState> mapTopRatedInitiated(
      TopRatedTvShowEventInitiated event) async* {
    yield TopRatedTvShowState.loading();
    try {
      final _topRatedTvShowResult =
          await _movieRepository.topRatedTvShow(event.page);
      yield TopRatedTvShowState.success(_topRatedTvShowResult);
    } on ResultError catch (e) {
      yield TopRatedTvShowState.error(e.message);
    } on NoResultException catch (_) {
      yield TopRatedTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield TopRatedTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<TopRatedTvShowState> mapNextResult(
      TopRatedTvShowEventNextResult event) async* {
    try {
      final _topRatedTvShowResult =
          await _movieRepository.popularTvShow(event.page);
      yield TopRatedTvShowState.success(
          state.getResults + _topRatedTvShowResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield TopRatedTvShowState.error(e.message);
    }
  }
}
