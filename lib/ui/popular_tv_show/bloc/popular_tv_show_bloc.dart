import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/popular_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class PopularTvShowBloc extends Bloc<PopularTVShowEvent, PopularTvShowState> {
  final MovieRepository _movieRepository;

  PopularTvShowBloc(this._movieRepository) : super();

  void onPopularTvShowInitiated(int page) {
    add(PopularTvShowInitiated((b) => b..page = page));
  }

  void onPopularTvNextResult(int page) {
    add(PopularTvShowNextResult((b) => b..page = page));
  }

  @override
  PopularTvShowState get initialState => PopularTvShowState.initial();

  @override
  Stream<PopularTvShowState> mapEventToState(
    PopularTVShowEvent event,
  ) async* {
    if (event is PopularTvShowInitiated) {
      yield* mapPopularInitiated(event);
    } else if (event is PopularTvShowNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<PopularTvShowState> mapPopularInitiated(
      PopularTvShowInitiated event) async* {
    yield PopularTvShowState.loading();
    try {
      final _popularTvShowResult =
          await _movieRepository.popularTvShow(event.page);
      yield PopularTvShowState.success(_popularTvShowResult);
    } on ResultError catch (e) {
      yield PopularTvShowState.error(e.message);
    } on NoResultException catch (_) {
      yield PopularTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield PopularTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<PopularTvShowState> mapNextResult(
      PopularTvShowNextResult event) async* {
    try {
      final _popularTvShowResult =
          await _movieRepository.popularTvShow(event.page);
      yield PopularTvShowState.success(state.getResults + _popularTvShowResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield PopularTvShowState.error(e.message);
    }
  }
}
